class_name SeededRng
extends RefCounted
## Deterministic random number generator for the rules core.
##
## xoshiro128** with 128-bit state, seeded through splitmix32. Pure integer math,
## no engine RNG, so the same seed gives the same sequence on every platform and
## engine version. The order in which game rules draw numbers is part of the
## game's determinism: always draw through one instance in a fixed order.
##
## Do not name methods like the GDScript global functions (randi, randf, randi_range,
## ...): an unqualified call inside this class would resolve to the engine RNG and
## silently break determinism. tests/unit/test_no_engine_rng.gd guards this.

const _MASK: int = 0xFFFFFFFF
const _TWO_POW_32: int = 4294967296

var _s0: int = 0
var _s1: int = 0
var _s2: int = 0
var _s3: int = 0


func _init(seed_value: int = 0) -> void:
	reseed(seed_value)


## Reset the generator from a 64-bit seed.
func reseed(seed_value: int) -> void:
	var sm: int = seed_value & _MASK
	sm = (sm + _imul((seed_value >> 32) & _MASK, 0x9E3779B9)) & _MASK
	var words: Array[int] = []
	for i: int in 4:
		sm = (sm + 0x9E3779B9) & _MASK
		var z: int = sm
		z = _imul(z ^ (z >> 16), 0x85EBCA6B)
		z = _imul(z ^ (z >> 13), 0xC2B2AE35)
		words.append((z ^ (z >> 16)) & _MASK)
	if words[0] == 0 and words[1] == 0 and words[2] == 0 and words[3] == 0:
		words[0] = 1
	_s0 = words[0]
	_s1 = words[1]
	_s2 = words[2]
	_s3 = words[3]


## Next 32-bit unsigned integer (0 .. 2^32 - 1).
func next_u32() -> int:
	var result: int = _imul(_rotl(_imul(_s1, 5), 7), 9)
	var t: int = (_s1 << 9) & _MASK
	_s2 ^= _s0
	_s3 ^= _s1
	_s1 ^= _s2
	_s0 ^= _s3
	_s2 ^= t
	_s3 = _rotl(_s3, 11)
	return result


## Float in [0.0, 1.0).
func next_float() -> float:
	return float(next_u32()) / float(_TWO_POW_32)


## Integer in [low, high], both inclusive. Unbiased (rejection sampling).
func int_range(low: int, high: int) -> int:
	assert(high >= low, "int_range: high must be >= low")
	var n: int = high - low + 1
	assert(n <= _TWO_POW_32, "int_range: span must fit in 32 bits")
	var limit: int = (_TWO_POW_32 / n) * n
	while true:
		var v: int = next_u32()
		if v < limit:
			return low + (v % n)
	return low  # unreachable, keeps the static analyzer satisfied


## True with the given probability in [0.0, 1.0].
func chance(probability: float) -> bool:
	return next_float() < probability


## In-place Fisher-Yates shuffle. Returns the same array for chaining.
func shuffle(items: Array) -> Array:
	for i: int in range(items.size() - 1, 0, -1):
		var j: int = int_range(0, i)
		var tmp: Variant = items[i]
		items[i] = items[j]
		items[j] = tmp
	return items


## Random element of a non-empty array.
func pick(items: Array) -> Variant:
	assert(not items.is_empty(), "pick: array is empty")
	return items[int_range(0, items.size() - 1)]


## Snapshot of the internal state (for saving a run).
func get_state() -> Array[int]:
	return [_s0, _s1, _s2, _s3]


## Restore a snapshot made by get_state().
func set_state(state: Array[int]) -> void:
	assert(state.size() == 4, "set_state: expected 4 words")
	_s0 = state[0] & _MASK
	_s1 = state[1] & _MASK
	_s2 = state[2] & _MASK
	_s3 = state[3] & _MASK


## Independent generator with the same state.
func duplicate_rng() -> SeededRng:
	var copy: SeededRng = SeededRng.new()
	copy.set_state(get_state())
	return copy


static func _rotl(x: int, k: int) -> int:
	return ((x << k) | (x >> (32 - k))) & _MASK


## 32-bit wrapping multiply without relying on 64-bit overflow behaviour.
static func _imul(a: int, b: int) -> int:
	var a_hi: int = (a >> 16) & 0xFFFF
	var a_lo: int = a & 0xFFFF
	return (a_lo * b + (((a_hi * b) & 0xFFFF) << 16)) & _MASK

extends GutTest
## SeededRng must match the independent Python reference
## (scratch reference implementation, xoshiro128** + splitmix32 seeding).

const _VECTORS: Dictionary = {
	0: [3809008728, 1133695204, 53579671, 2891528803, 139681546, 2203266335],
	1: [2442144158, 3238099751, 3819917871, 2104621829, 2021136066, 4223536128],
	42: [2837322924, 544945897, 479756282, 3500138142, 339756180, 113173290],
	123456789: [4284103975, 1001954530, 2701803082, 2658065534, 3104308804, 4033197306],
	1099511627783: [1606920336, 1856359683, 890391056, 323721861, 1453546004, 3683479086],
}


func test_matches_reference_vectors() -> void:
	for seed_value: int in _VECTORS:
		var rng: SeededRng = SeededRng.new(seed_value)
		var expected: Array = _VECTORS[seed_value]
		for i: int in expected.size():
			assert_eq(rng.next_u32(), expected[i], "seed %d, draw %d" % [seed_value, i])


func test_same_seed_same_sequence() -> void:
	var a: SeededRng = SeededRng.new(2026)
	var b: SeededRng = SeededRng.new(2026)
	for i: int in 100:
		assert_eq(a.next_u32(), b.next_u32())


func test_different_seeds_differ() -> void:
	var a: SeededRng = SeededRng.new(1)
	var b: SeededRng = SeededRng.new(2)
	assert_ne(a.next_u32(), b.next_u32())


func test_reseed_restarts_sequence() -> void:
	var rng: SeededRng = SeededRng.new(42)
	var first: int = rng.next_u32()
	rng.next_u32()
	rng.reseed(42)
	assert_eq(rng.next_u32(), first)


func test_int_range_matches_reference() -> void:
	var rng: SeededRng = SeededRng.new(7)
	var expected: Array[int] = [1, 6, 6, 3, 2, 4, 6, 3, 3, 3, 5, 1]
	var actual: Array[int] = []
	for i: int in expected.size():
		actual.append(rng.int_range(1, 6))
	assert_eq(actual, expected)


func test_int_range_bounds_and_single_value() -> void:
	var rng: SeededRng = SeededRng.new(3)
	for i: int in 500:
		var v: int = rng.int_range(-3, 3)
		assert_between(v, -3, 3)
	assert_eq(rng.int_range(5, 5), 5)


func test_int_range_distribution_is_roughly_uniform() -> void:
	var rng: SeededRng = SeededRng.new(1)
	var counts: Array[int] = [0, 0, 0, 0, 0, 0]
	for i: int in 6000:
		counts[rng.int_range(1, 6) - 1] += 1
	assert_eq(counts, [1029, 1041, 977, 1008, 954, 991])
	for c: int in counts:
		assert_between(c, 850, 1150)


func test_next_float_range_and_mean() -> void:
	var rng: SeededRng = SeededRng.new(5)
	var total: float = 0.0
	for i: int in 20000:
		var f: float = rng.next_float()
		assert_between(f, 0.0, 0.9999999999)
		total += f
	assert_almost_eq(total / 20000.0, 0.4996, 0.001)


func test_shuffle_matches_reference_and_keeps_elements() -> void:
	var rng: SeededRng = SeededRng.new(7)
	var items: Array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	rng.shuffle(items)
	assert_eq(items, [3, 9, 6, 5, 4, 7, 2, 1, 8, 0])
	var sorted: Array = items.duplicate()
	sorted.sort()
	assert_eq(sorted, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])


func test_state_roundtrip() -> void:
	var rng: SeededRng = SeededRng.new(99)
	for i: int in 5:
		rng.next_u32()
	assert_eq(rng.get_state(), [426334593, 947499285, 714940971, 3983984001])
	var saved: Array[int] = rng.get_state()
	var expected: Array[int] = [rng.next_u32(), rng.next_u32(), rng.next_u32()]
	assert_eq(expected, [2987415797, 4132555388, 2357133474])
	rng.set_state(saved)
	var again: Array[int] = [rng.next_u32(), rng.next_u32(), rng.next_u32()]
	assert_eq(again, expected)


func test_duplicate_rng_is_independent() -> void:
	var a: SeededRng = SeededRng.new(11)
	a.next_u32()
	var b: SeededRng = a.duplicate_rng()
	assert_eq(a.next_u32(), b.next_u32())
	a.next_u32()
	assert_ne(a.get_state(), b.get_state())


func test_chance_extremes() -> void:
	var rng: SeededRng = SeededRng.new(8)
	for i: int in 100:
		assert_false(rng.chance(0.0))
		assert_true(rng.chance(1.0))


func test_pick_returns_member() -> void:
	var rng: SeededRng = SeededRng.new(9)
	var items: Array = ["a", "b", "c"]
	for i: int in 50:
		assert_true(items.has(rng.pick(items)))

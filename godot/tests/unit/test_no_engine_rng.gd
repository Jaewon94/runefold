extends GutTest
## The rules core must never use the engine RNG (it differs per run and per version).
## All randomness goes through SeededRng.

const _GAME_DIR: String = "res://game"
const _FORBIDDEN: Array[String] = [
	"randi(", "randf(", "randi_range(", "randf_range(", "randomize(", "seed(",
	"RandomNumberGenerator", ".shuffle()", ".pick_random()", "rand_from_seed(",
]


func test_game_code_has_no_engine_rng() -> void:
	var files: Array[String] = _collect_gd_files(_GAME_DIR)
	assert_gt(files.size(), 0, "no game scripts found")
	for path: String in files:
		var f: FileAccess = FileAccess.open(path, FileAccess.READ)
		assert_not_null(f, "cannot read " + path)
		var line_no: int = 0
		while not f.eof_reached():
			var line: String = f.get_line()
			line_no += 1
			var code: String = line.strip_edges()
			if code.begins_with("#"):
				continue
			for token: String in _FORBIDDEN:
				# SeededRng defines its own int_range()/chance(); only the engine names are banned.
				var idx: int = code.find(token)
				while idx != -1:
					var before: String = code.substr(maxi(idx - 1, 0), 1) if idx > 0 else ""
					var is_member_call: bool = before == "."
					var is_ident_part: bool = before != "" and (before == "_" or before.is_valid_identifier())
					if token.begins_with(".") or not (is_member_call or is_ident_part):
						assert_true(false, "%s:%d uses engine RNG '%s'" % [path, line_no, token])
					idx = code.find(token, idx + 1)
		f.close()


func _collect_gd_files(dir_path: String) -> Array[String]:
	var result: Array[String] = []
	var dir: DirAccess = DirAccess.open(dir_path)
	if dir == null:
		return result
	dir.list_dir_begin()
	var name: String = dir.get_next()
	while name != "":
		var full: String = dir_path.path_join(name)
		if dir.current_is_dir():
			if not name.begins_with("."):
				result.append_array(_collect_gd_files(full))
		elif name.ends_with(".gd"):
			result.append(full)
		name = dir.get_next()
	dir.list_dir_end()
	return result

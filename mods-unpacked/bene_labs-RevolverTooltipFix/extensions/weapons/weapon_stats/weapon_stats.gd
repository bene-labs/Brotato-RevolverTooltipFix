extends "res://weapons/weapon_stats/weapon_stats.gd"


func get_cooldown_text(base_stats: Resource, player_index: int, multiplier: float = 1.0) -> String:
	if multiplier == 1.0:
		return .get_cooldown_text(base_stats, player_index, multiplier)
	var cd = base_stats.get_cooldown_value(player_index, multiplier)
	var base_cd = base_stats.get_base_cooldown_value(base_stats if multiplier == 1.0 else self, multiplier)
	var a = get_signed_col_a(1.0, multiplier)
	return a + str(stepify(cd, 0.01)) + "s" + col_b

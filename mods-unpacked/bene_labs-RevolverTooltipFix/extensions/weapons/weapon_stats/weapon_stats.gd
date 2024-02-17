extends "res://weapons/weapon_stats/weapon_stats.gd"


func get_cooldown_text(base_stats: Resource, multiplier: float = 1.0) -> String:
	var multiplied_stats = self.duplicate()
	multiplied_stats.cooldown *= multiplier
	
	var cd = multiplied_stats.get_cooldown_value(base_stats)
	var base_cd = get_base_cooldown_value(base_stats)
	var a = get_signed_col_a(-cd, -base_cd)
	return a + str(stepify(cd, 0.01)) + "s" + col_b

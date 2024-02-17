extends Node

const MENUSTRING_LOG = "bene_labs-RevolverTooltipFix"

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", MENUSTRING_LOG)
	modLoader.install_script_extension("res://mods-unpacked/bene_labs-RevolverTooltipFix/extensions/weapons/weapon_stats/weapon_stats.gd")

func _ready():
	ModLoaderUtils.log_info("Ready", MENUSTRING_LOG)

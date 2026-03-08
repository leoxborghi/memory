extends Control


@onready var main: Control = $Main
@onready var game: Control = $Game



func _ready() -> void:
	SignalHub.on_level_selected.connect(on_level_selected)
	
	
func on_level_selected(level_setting: LevelSetting) -> void:
	pass

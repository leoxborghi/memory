extends Control


@onready var main: Control = $Main
@onready var game: Control = $Game







func _ready() -> void:
	SignalHub.on_level_selected.connect(on_level_selected)
	show_game(false)


func show_game(s: bool) -> void:
	game.visible = s
	main.visible = !s


func on_level_selected(_level_setting: LevelSetting) -> void:
	show_game(true)

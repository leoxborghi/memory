extends Control


@onready var main: Control = $Main
@onready var game: Control = $Game



func _ready() -> void:
	SignalHub.on_level_selected.connect(on_level_selected)
	SignalHub.on.game_exit_pressed.connect(on_game_exit_pressed)
	on_game_exit_pressed()


func show_game(s: bool) -> void:
	game.visible = s
	main.visible = !s


func on_game_exit_pressed() -> void:
	show_game(false)



func on_level_selected(_level_setting: LevelSetting) -> void:
	show_game(true)

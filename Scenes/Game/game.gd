extends Control


const MEMORY_TILE = preload("res://Scenes/MemoryTile/memory_tile.tscn")


@onready var grid_container: GridContainer = $HB/GridContainer



func _ready() -> void:
	SignalHub.on_level_selected.connect(on_level_selected)
	


func on_level_selected(level_setting: LevelSetting) -> void:
	grid_container.columns = level_setting.cols
	for num in range(level_setting.total_tiles):
		var mt: MemoryTile = MEMORY_TILE.instantiate()
		grid_container.add_child(mt)


func _on_exit_button_pressed() -> void:
	for t in grid_container.get_children():
		t.queue.free()
		SignalHub.emit_on_game_exit_pressed()

extends Control

var GAME = preload("res://Scenes/Game/Game.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("power"):
		GameManager.load_game_scene()


func _ready() -> void:
	get_tree().paused = false

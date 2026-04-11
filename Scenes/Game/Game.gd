extends Node

const PIPES = preload("res://Scenes/Pipes/Pipes.tscn")
var MAIN = load("res://Scenes/Main.tscn")



@onready var pipes_holder: Node = $PipesHolder
@onready var upper_spawn: Marker2D = $UpperSpawn
@onready var lower_spawn: Marker2D = $LowerSpawn



func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_packed(MAIN )





func _ready() -> void:
	spawn_pipes()


func spawn_pipes() -> void:
	var new_pipes: Pipes = PIPES.instantiate()
	var y_pos: float = randf_range(
		upper_spawn.position.y,
		lower_spawn.position.y,
	)
	new_pipes.position = Vector2(
		upper_spawn.position.x, y_pos
	)
	pipes_holder.add_child(new_pipes)



func _on_spawn_timer_timeout() -> void:
	spawn_pipes()

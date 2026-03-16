extends Node2D


class_name Pipes


const SPEED: float = 120.0



func _ready() -> void:
	pass 



func _physics_process(delta: float) -> void:
	position.x -= SPEED * delta


func _on_sceer_notifier_screen_exited() -> void:
	queue_free()


func _on_life_timer_timeout() -> void:
	queue_free()

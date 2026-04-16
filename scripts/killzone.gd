extends Area2D

@onready var timer: Timer = $Timer
@onready var dead_sfx: AudioStreamPlayer2D = $DeadSFX

func _on_body_entered(body: Node2D) -> void:
	print("You died.")
	dead_sfx.play()
	Engine.time_scale = 0.3
	body.get_node("CollisionShape2D").queue_free() #Queue free removes node of body so player falls off the screen
	timer.start()
	


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

extends Area2D
@onready var slime: Node2D = $".."


func _on_body_entered(body: Node2D) -> void:
	print("Monster defeated")
	slime.queue_free() #Queue free removes node of body so player falls off the screen

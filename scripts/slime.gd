extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_2_dright: RayCast2D = $RayCast2Dright
@onready var ray_cast_2_dleft: RayCast2D = $RayCast2Dleft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2_dright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_2_dleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * SPEED * delta #Very standar way of making movement
	
	

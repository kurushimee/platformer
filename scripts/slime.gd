extends Node2D


const SPEED := 60

var direction := 1

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight


func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = 1
	if ray_cast_right.is_colliding():
		direction = -1
	animated_sprite.flip_h = direction < 0

	position.x += direction * SPEED * delta

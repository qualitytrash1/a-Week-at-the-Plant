extends CharacterBody2D


const SPEED = 25.0
const JUMP_VELOCITY = -400.0
const FRICTION = 0.5

@onready var camera: Camera2D = $Camera
@onready var model: Node2D = $Model

func _physics_process(delta: float) -> void:
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var direction := Input.get_vector("left", "right", "up", "down")
	
	velocity = direction.normalized() * SPEED
	velocity *= FRICTION
	
	move_and_slide()
	
  
	camera.global_position = round(camera.global_position)

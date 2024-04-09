extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0




func _physics_process(delta):
	 
	

	# Handle jump.
	

	# Get the input direction and handle the movement/deceleration.
	# As  practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

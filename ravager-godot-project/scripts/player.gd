# Player controller script
# Handles player movement with smooth acceleration/deceleration
extends CharacterBody2D

# Exported variables - adjustable in the editor Inspector panel
@export var speed: float = 300.0           # Maximum movement speed in pixels per second
@export var acceleration: float = 10.0     # How quickly the player reaches max speed (higher = more responsive)

func _physics_process(delta):
	# Initialize movement direction vector to zero
	var direction = Vector2.ZERO
	
	# Get input direction from custom input actions (defined in Project Settings)
	# Returns -1 to 1 based on key pressed (negative for left/up, positive for right/down)
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")
	
	# Normalize the direction vector to prevent faster diagonal movement
	# Without normalization, moving diagonally would be ~1.4x faster due to Pythagorean theorem
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		# Smoothly interpolate current velocity towards target velocity using delta for frame-rate independence
		velocity = velocity.lerp(direction * speed, acceleration * delta)
	else:
		# When no input is pressed, smoothly decelerate to a stop
		velocity = velocity.lerp(Vector2.ZERO, acceleration * delta)
	
	# Apply movement and handle collision responses with the physics engine
	move_and_slide()

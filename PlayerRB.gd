extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	
	
func _physics_process(delta):
	if(Input.is_action_pressed('ui_accept')):
		#http://kidscancode.org/blog/2017/12/godot3_kyn_rigidbody1/
		apply_impulse(Vector2(25, 0), global_position-Vector2(0,-200))
		$Player.play('Jump')
#		linear_velocity = Vector2(0,-200)
		print(transform.x)
		pass
	if(Input.is_action_pressed('ui_right')):
		$Player.play('Walk')
		$Player.flip_h = true
		linear_velocity = Vector2(800,linear_velocity.y)
	elif(Input.is_action_pressed('ui_left')):
		$Player.play('Walk')
		$Player.flip_h = false
		linear_velocity = Vector2(-800,linear_velocity.y)
	else:
		$Player.play('Static')
		linear_velocity = Vector2(0,linear_velocity.y)
		pass
		
	
	pass

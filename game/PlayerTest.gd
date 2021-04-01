extends KinematicBody2D

var movimento = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		movimento.x = 100
	elif Input.is_action_pressed("ui_left"):
		movimento.x = -100
	else:
		movimento.x = 0
	
	if Input.is_action_pressed("ui_down"):
		movimento.y = 100
	elif Input.is_action_pressed(("ui_up")):
		movimento.y = -100
	else:
		movimento.y = 0
	
	move_and_slide(movimento)

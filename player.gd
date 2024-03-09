extends CharacterBody2D


@export var speed = 400

func _physics_process(delta):
	get_input()
	apply_animation()
	move_and_slide()

func get_input():
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

func apply_animation():
	if Input.is_action_pressed("down") || Input.is_action_pressed("up"):
		$AnimatedSprite2D.play("up")
	elif Input.is_action_pressed("left"):
		$AnimatedSprite2D.play("walking")
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("right"):
		$AnimatedSprite2D.play("walking")
		$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.stop()
		


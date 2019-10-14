extends RigidBody2D

# Minimum speed range.
export var min_speed = 150

# Maximum speed range.
export var max_speed = 250

var mob_types = ["walk", "swim", "fly"]

func _ready():
	var randiValue = randi()
	var mobType = mob_types.size()
	var type = randiValue % mobType
	var animation = mob_types[type]
	$AnimatedSprite.animation = animation

func _on_Visibility_screen_exited():
	queue_free()

func _on_start_game():
	queue_free()

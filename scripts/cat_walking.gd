extends Node2D

export (float) var velocity # constant velocity for the cat
var movement = Vector2()


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	movement = Vector2(1,0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement = movement.normalized() * velocity
	position += movement * delta

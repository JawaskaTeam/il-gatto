extends Node


# Action
# @author Alberto Blanco Celdrán
# @date 03/10/2021 22:50
# A queueable cat action

signal action_ended

onready var cat: Node2D = get_parent()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Resets the action.
func reset():
	pass


# Starts the action.
# @param variant arguments
func start(args: Array = []):
	reset()


# Ends the action.
func end():
	emit_signal('action_ended', self)

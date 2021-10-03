extends Node


# Action
# @author Alberto Blanco Celdrán
# @date 03/10/2021 10:02
# An atomic action by the cat.

signal action_ended

onready var cat: Node2D = get_parent().get_parent() # get cat from activity


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Called to start the action.
# @param action initialization arguments
func start(args: Array = []):
	pass


# Halts the action.
func stop():
	pass


# Called when the action has ended naturally, emitting the signal.
func _on_action_ended():
	stop() # end the action
	emit_signal('action_ended', self)

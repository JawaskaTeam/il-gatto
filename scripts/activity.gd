extends Node


# Activity
# @author Alberto Blanco Celdrán
# @date 02/10/2021 22:06
# Defines a specific activity from the cat.

signal activity_ended

var cat: Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Starts the queue of actions.
func _on_start():
	pass


# Called when all actions have been performed.
func _on_activity_end():
	emit_signal('activity_ended', self)

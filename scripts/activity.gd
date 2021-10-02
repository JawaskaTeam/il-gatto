extends Node


# Activity
# @author Alberto Blanco Celdrán
# @date 02/10/2021 22:06
# Defines a queue of actions

signal activity_ended

export (Array) var actions


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Starts the queue of actions.
func start():
	pass # TODO: connect with the first action and begin the queue


# Called when an action ends. Starts the next activity.
func _on_action_end(action):
	pass # TODO: move the action cursor to the next one and start that one as well


# Called when all actions have been performed.
func _on_activity_end():
	emit_signal('activity_ended')

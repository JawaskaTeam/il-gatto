extends Node


# Action
# @author Alberto Blanco Celdrán
# @date 02/10/2021 21:48
# An atomic single action performed by the cat

signal action_ended

onready var cat: Node2D = get_parent().cat


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called to begin the action.
func _on_start():
	pass


# Called to end the action.
func _on_end():
	emit_signal('action_ended')

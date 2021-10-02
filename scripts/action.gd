extends Node


# Action
# @author Alberto Blanco Celdrán
# @date 02/10/2021 21:48
# An atomic single action performed by the cat

onready var cat: Node2D

signal action_ended


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called to begin the action.
func _on_start(cat: Node2D):
	self.cat = cat


# Called to end the action.
func _on_end():
	emit_signal('action_end')

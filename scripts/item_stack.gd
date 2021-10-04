extends Node


# Item stack
# @author Alberto Blanco Celdrán
# @date 04/10/2021 2:40
# Point of storage and interaction between player and item.

signal amount_changed
signal stack_removed
signal stack_used

export (PackedScene) var ui_slot # scene for the visual representation in the UI

var amount: int


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Adds an amount to the stack.
# @param amount
func add_amount(amount: int):
	self.amount += amount
	
	# remove if it's below 0
	if self.amount <= 0:
		remove()
	else:
		emit_signal('amount_changed')


# Removes the current stack.
func remove():
	emit_signal('stack_removed')
	queue_free()


# Called when the item stack is used.
func use():
	emit_signal('stack_use', name)

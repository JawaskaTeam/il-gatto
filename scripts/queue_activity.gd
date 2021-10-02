extends 'res://scripts/activity.gd'


# Action queue activity
# @author Alberto Blanco Celdrán
# @date 02/10/2021 22:06
# Defines a queue of actions

onready var actions: float = get_child_count()
var current: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Starts the queue of actions.
func _on_start():
	._on_start()
	var current_child = get_child(current)
	current_child.connect('action_ended', self, '_on_action_end', [current_child])
	current_child._on_start()


# Called when an action ends. Starts the next activity.
# @param action that ended
func _on_action_end(action):
	action.disconnect('action_ended', self, '_on_action_end')
	current += 1 # advance cursor
	if current >= actions: # end activity if there are no more actions
		_on_activity_end()
	else:
		_on_start()

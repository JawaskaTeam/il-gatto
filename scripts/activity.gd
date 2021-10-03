extends Node


# Activity
# @author Alberto Blanco Celdrán
# @date 03/10/2021 10:10
# A set of chained actions performed by the cat.

signal activity_ended

onready var cat: Node2D = get_parent()
onready var STATUS = get_parent().get_status_enum()

var active_action: Node # the currently active action


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Starts the activity.
# @param start arguments
func start(args: Array = []):
	pass


# Connects and starts the given action.
# @param action to start
# @param action start arguments
func start_action(action: Node, args: Array = []):
	# halt the previous active action
	if has_active_action():
		halt_action(active_action)
	
	# start new action
	active_action = action
	action.connect('action_ended', self, '_on_action_ended')
	action.start(args)


# Halts the given action (if not provided, will halt the active one).
# @param action to forcefully stop
func halt_action(action: Node = active_action):
	if action == active_action:
		active_action = null
	action.stop()


# Stops the current activity, halting the active action.
func halt_activity():
	if has_active_action():
		halt_action(active_action)


# Returns the currently active action.
# @return active action
func has_active_action():
	return active_action != null


# Called when an action has ended.
# @param action
func _on_action_ended(action: Node):
	action.disconnect('action_ended', self, '_on_action_ended') # disconnect action by default
	
	# if it was the active action, remove reference
	if action == active_action:
		active_action = null


# Called when the activity has ended.
func _on_activity_ended():
	emit_signal('activity_ended', self)

extends 'res://scripts/idle_action.gd'


# Cancellable action
# @author Alberto Blanco Celdrán
# @date 04/10/2021 21:58
# An action that can be cancelled

export (float) var mood_penalty # how much mood does cancelling this action take away


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Cancels the action.
func cancel():
	GameState.mood.set_value(GameState.mood.get_value() - mood_penalty)
	end()
	return mood_penalty > 0

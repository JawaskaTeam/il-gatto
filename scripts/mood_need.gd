extends 'res://scripts/need.gd'


# Mood affecting need
# @author Alberto Blanco Celdrán
# @date 02/10/2021 20:40
# A need that affects the cat's mood

export (float) var mood_penalty # how much mood is lost when the value is low
export (float) var mood_recovery # how much mood is recovered whent he value is high
export (float) var low_threshold # at which point mood is lost
export (float) var high_threshold # at which point mood is regained


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# @override
func _on_value_changed(_old: float, value: float):
	var mood = get_parent().get_node('mood')
	if value <= low_threshold:
		mood.add_modifier(name, -mood_penalty)
	elif value >= high_threshold:
		mood.add_modifier(name, mood_recovery)
	else:
		mood.remove_modifier(name)

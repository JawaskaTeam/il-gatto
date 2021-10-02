extends 'res://scripts/game_variable.gd'


# Need
# @author Alberto Blanco Celdrán
# @date 02/10/2021 10:17
# Base for cat's needs

signal changed

export (float) var max_value
export (float) var default_value
var value: float


# Called when the node enters the scene tree for the first time.
func _ready():
	GameState.connect('tick', self, 'tick')
	set_value(default_value)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Changes the value and emits the signal.
# @param new value
func set_value(value: float):
	if self.value != value: # only change if it's different
		value = clamp(value, 0, max_value) # clamp the parameter
		_on_value_changed(self.value, value) # call the event
		emit_signal('changed', self.value, value) # emit signal
		self.value = value # change value


# Returns the current value.
# @return value
func get_value() -> float:
	return value


# Called internally when the value changes.
# @param value before changing
# @param current value
func _on_value_changed(old_value: float, new_value: float):
	pass


# @override
func reset():
	set_value(default_value)

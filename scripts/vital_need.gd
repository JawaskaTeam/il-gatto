extends 'res://scripts/mood_need.gd'


# Vital need
# @author Alberto Blanco Celdrán
# @date 02/10/2021 13:48
# A need that will constantly decrease and upon reaching 0, it will affect health

onready var health: Node = get_node(_health)

export (NodePath) var _health
export (float) var expense_rate # how much is decreased per tick
export (float) var damage_rate # how much health it decreases per tick upon reaching 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# @override
func tick(delta: float):
	if get_value() > 0:
		set_value(value - (expense_rate * delta))
	else:
		health.set_value(health.get_value() - (damage_rate * delta))

extends 'res://scripts/item.gd'


# Consumable item
# @author Alberto Blanco Celdrán
# @date 04/10/2021 2:07
# An item that requires the user to tap the cat before using.

onready var interface: PackedScene = load('res://scenes/ui/items/consumable.tscn')


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# @override
func use(hub: Node2D):
	var instance: Control = interface.instance()
	instance.item = name
	hub.add_child(instance)


# Called by the interface to finally consume the item.
# @param the clicked cat
func consume(cat: Node2D):
	pass

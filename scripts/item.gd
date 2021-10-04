extends Node


# Item
# @author Alberto Blanco Celdrán
# @date 04/10/2021 1:29
# Describes an item

var stack

export (String) var print_name
export (Texture) var icon


# Called when the node enters the scene tree for the first time.
func _ready():
	stack = load('res://scenes/data/item_stack.tscn')


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Applies the effects of using the item.
# @param the hub node
func use(hub: Node2D):
	pass

extends Node2D


# Placed entity
# Declare member variables here. Examples:
# @date 04/10/2021 16:16
# An entity placed by the player from the inventory

const IN_CLICK: String = 'click'

var ghosted: bool
var item: String # item type that spawned it


# Called when the node enters the scene tree for the first time.
func _ready():
	ghosted = true
	modulate.a = .5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ghosted:
		set_position(get_parent().to_local(get_viewport().get_mouse_position()))


func _input(event: InputEvent):
	if event is InputEventMouseButton and event.is_action_pressed(IN_CLICK) and ghosted:
		place()


# Makes the entity stop being a ghost and can't be picked up again.
func place():
	ghosted = false
	modulate.a = 1
	get_parent()._on_entity_placed(self)
	get_parent().entities.push_back(name)
	Items.get(item).place()
	


# Upon being removed, remove its reference from the hub.
func _exit_tree():
	get_parent().entities.erase(item)

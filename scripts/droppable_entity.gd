extends Node2D


# Placed entity
# Declare member variables here. Examples:
# @date 04/10/2021 16:16
# An entity placed by the player from the inventory

const IN_CLICK: String = 'click'
const IN_CANCEL: String = 'cancel'

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
	if event is InputEventMouseButton and ghosted:
		if event.is_action_pressed(IN_CLICK):
			var rect := Rect2(0, 156, 512, 100) # where can items be placed at
			if rect.has_point(event.position):
				place()
		elif event.is_action_pressed(IN_CANCEL):
			queue_free() # remove itself


# Makes the entity stop being a ghost and can't be picked up again.
func place():
	if not get_parent().entities.has(name):
		ghosted = false
		modulate.a = 1
		get_parent()._on_entity_placed(self)
		get_parent().entities.push_back(name)
		Items.get(item).place()
	


# Upon being removed, remove its reference from the hub.
func _exit_tree():
	get_parent().entities.erase(item)

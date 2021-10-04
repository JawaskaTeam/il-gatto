extends ScrollContainer


# Shop item list
# @author Alberto Blanco Celdrán
# @date 04/10/2021 19:20
# Lists a series of items.

onready var container: GridContainer = $container

export (PackedScene) var item
var items: Array


# Called when the node enters the scene tree for the first time.
func _ready():
	container.set_columns(max(container.get_size().x / 64, 1))
	for i in items:
		var instance = item.instance()
		instance.item = i
		container.add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

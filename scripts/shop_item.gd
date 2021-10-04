extends Control


# Shop item
# @author Alberto Blanco Celdrán
# @date 04/10/2021 18:30
# Describes an item in the shop.

onready var click: Button = $click
onready var icon: Sprite = $icon
onready var price: Label = $price

var item: Node


# Called when the node enters the scene tree for the first time.
func _ready():
	click.connect('button_down', self, '_on_click')
	icon.texture = Items.get(item.name).icon
	price.set_text(str(item.price, '$'))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Called when the button is pressed.
func _on_click():
	pass

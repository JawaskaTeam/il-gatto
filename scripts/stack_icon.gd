extends Control


# Item stack icon
# @author Alberto Blanco Celdrán
# @date 04/10/2021 11:14
# Displays the state of an item stack

signal item_used # caught by the inventory to close itself

onready var amount: Label = $amount
onready var icon: Sprite = $icon
onready var click: Button = $click

var item: String


# Called when the node enters the scene tree for the first time.
func _ready():
	var stack = GameState.inventory.get_item_stack(item)
	click.connect('button_down', self, '_on_click')
	stack.connect('amount_changed', self, '_on_amount_changed')
	stack.connect('stack_removed', self, '_on_removed')
	amount.set_text(str(stack.amount))
	icon.set_texture(Items.get(item).icon)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Called when the amount is updated.
# @param new amount
func _on_amount_changed(amount: int):
	self.amount.set_text(str(amount))


# Called when the button is clicked (uses the item).
func _on_click():
	emit_signal('item_used', item)


# Called when the GameState item stack is removed
func _on_removed():
	queue_free()

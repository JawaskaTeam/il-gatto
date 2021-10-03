

# Animation variants
# @author Alberto Blanco Celdrán
# @date 03/10/2021 22:35
# Describes the variants of an animation


class_name AnimationVariant

var blink: String
var meow: String
var meow_blink: String

# @constructor
func _init(blink: String, meow: String, meow_blink: String):
	self.blink = blink
	self.meow = meow
	self.meow_blink = meow_blink

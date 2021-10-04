

# Queued action
# @author Alberto Blanco Celdrán
# @date 03/10/2021 23:46
# Describes a queued action.


class_name QueuedAction

var action: Node
var args: Array 

# @constructor
func _init(action: Node, args: Array = []):
	self.action = action
	self.args = args

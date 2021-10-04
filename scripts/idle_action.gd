extends 'res://scripts/action.gd'


# Idle action
# @author Alberto Blanco Celdrán
# @date 04/10/2021 00:02
# Waits a certain amount of time before proceeding.

onready var timer: Timer = $timer


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.connect('timeout', self, 'end')


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# @override
func start(args: Array = []):
	if args.size() <= 0:
		push_error('No time specified.')
	timer.start(args[0])
	.start(args)


# @override
func end():
	timer.stop()
	.end()

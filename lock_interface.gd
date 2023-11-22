class_name UserInterface
extends Control

var _lock_on_target: LockOnNode = null

@onready var _lock_on_texture = $LockOn

# Called when the node enters the scene tree for the first time.
func _ready():
	_lock_on_texture.visible = false


func _process(_delta):
	if _lock_on_target:
		var pos = Globals.camera.get_lock_on_position(_lock_on_target)
		var lock_on_pos = Vector2(pos.x - _lock_on_texture.size.x / 2, pos.y - _lock_on_texture.size.y / 2)
		_lock_on_texture.position = lock_on_pos
	_lock_on_texture.visible = _lock_on_target != null	

func _on_lock_on_system_lock_on(target):
	_lock_on_target = target

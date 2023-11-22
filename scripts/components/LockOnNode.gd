class_name LockOnNode
extends Node3D

signal destroyed(target: LockOnComponent)

@export var health_component: HealthComponent

func _ready():
	if health_component:
		health_component.zero_health.connect(_emit_destroyed)
		
		
func _emit_destroyed():
	destroyed.emit(self)

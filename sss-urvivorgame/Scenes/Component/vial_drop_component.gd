extends Node

@export var vial_scene: PackedScene
@export var health_component : Node

func _ready():
	(health_component as HealthComponent).died.connect(on_died)
	
func on_died():
	if vial_scene == null:
		return 

	if not owner is Node2D:
		return
		
	var spawn_positionn = (owner as Node2D).global_position 
	var vial_instance = vial_scene.instantiate() as Node2D
	owner.get_parent().add_child(vial_instance)
	vial_instance.global_position = spawn_positionn
		
	
	

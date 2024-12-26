extends CollisionShape2D

const MAX_SPEED = 75

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = get_direction_to_player()
	velocity = direction * MAX_SPEED
	move_and_slide()


func get_direction_to_player():
	var player_node= get_tree().get_nodes_in_group("player")
	if player_node != null:
		return (player_node.globa_position - global_position).normalize
	return Vector2.ZERO


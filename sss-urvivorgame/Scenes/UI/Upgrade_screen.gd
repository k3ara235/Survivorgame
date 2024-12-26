extends CanvasLayer

@export var upgrade_card_scene : PackedScene
@onready var card_container : HBoxContainer = $%CardContainer

func set_ablility_upgrades(upgrades: Array[AbilityUpgrade]):
	for uprade in upgrades:
		var card_instance = upgrade_card_scene.instantiate()
		card_container.add_child(card_instance)
		card_instance.set_ability_upgrade(upgrades)

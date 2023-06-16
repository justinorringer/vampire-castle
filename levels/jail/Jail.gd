extends Node2D

@export var is_playable = true
@export var level_theme : AudioStream = null

func _on_area_2d_body_entered(body):
	print(body.name + " entered sewer transition area")
	if body.name == "Belmont":
		# hacky way to be able to run this scene alone for testing
		# when playing game, current_scene won't be nil
		if SceneSwitch.current_scene == null:
			var this_scene = get_node(".")
			SceneSwitch.current_scene = this_scene
		
		SceneSwitch.switch_scene("res://levels/castle/Castle.tscn")

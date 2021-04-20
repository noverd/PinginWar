extends Node
func scene(name):
	get_tree().change_scene("res://"+name+".tscn")

extends Node2D

func _ready():
	$AnimationPlayer.play("Fade in")
	yield(get_tree().create_timer(3), "timeout")
	$AnimationPlayer.play("Fade out")
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://scenes/MenuPrincipal.tscn")

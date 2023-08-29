extends Node

func _ready():
	pass 

func _on_Comprobar_pressed1():
	if Singleton.correcto7 == true:
		$Good.visible = !$Good.visible
		Singleton.bien7 = true
		Singleton.mal7 = false
	else:
		$Wrong.visible = !$Wrong.visible
		if Singleton.bien7 == false:
			Singleton.mal7 = true


func _on_Link_pressed1():
	OS.shell_open("https://farmacia.ugr.es/podnutricionpracticas_new/abro2013/ficheros/videos/49.mp4")



func _on_BotonReiniciar_pressed1():
	Singleton.correcto7 = false
	
	if $Good.visible == true:
		$Good.visible = !$Good.visible
	
	if $Wrong.visible == true:
		$Wrong.visible = !$Wrong.visible

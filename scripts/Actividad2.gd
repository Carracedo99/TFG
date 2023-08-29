extends Node2D

func _ready():
	pass


func _on_Ayuda_pressed():
	$Mandato_ayuda.visible = !$Mandato_ayuda.visible
	$Fondo_ayuda.visible = !$Fondo_ayuda.visible
	#$Link.visible = !$Link.visible


func _on_Comprobar_pressed():
	if Singleton.correcto2 == true:
		$Good.visible = !$Good.visible
		Singleton.bien2 = true
		Singleton.mal2 = false
	else:
		$Wrong.visible = !$Wrong.visible
		if Singleton.bien2 == false:
			Singleton.mal2 = true


func _on_Link_pressed():
	OS.shell_open("https://farmacia.ugr.es/podnutricionpracticas_new/abro2013/ficheros/videos/49.mp4")



func _on_BotonReiniciar_pressed():
	Singleton.correcto2 = false
	
	if $Good.visible == true:
		$Good.visible = !$Good.visible
	
	if $Wrong.visible == true:
		$Wrong.visible = !$Wrong.visible

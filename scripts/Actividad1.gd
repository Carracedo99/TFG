extends Node2D


func _ready():
	pass


func _on_Ayuda_pressed():
	$Mandato_ayuda.visible = !$Mandato_ayuda.visible
	$Fondo_ayuda.visible = !$Fondo_ayuda.visible
	#$Link.visible = !$Link.visible

# comprobar si es correcto

func _on_Comprobar_pressed():
	if Singleton.correcto1 == true:
		$Good.visible = !$Good.visible
		Singleton.bien1 = true
		Singleton.mal1 = false
	else:
		$Wrong.visible = !$Wrong.visible
		if Singleton.bien1 == false:
			Singleton.mal1 = true

# enlace de ayuda para el alumno 

func _on_Link_pressed():
	OS.shell_open("https://farmacia.ugr.es/podnutricionpracticas_new/abro2013/ficheros/videos/49.mp4")


# reiniciar actividad

func _on_BotonReiniciar_pressed():
	Singleton.correcto1 = false
	
	if $Good.visible == true:
		$Good.visible = !$Good.visible
	
	if $Wrong.visible == true:
		$Wrong.visible = !$Wrong.visible

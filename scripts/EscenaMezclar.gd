extends Node2D


func _ready():
	pass


func _on_Mezclar_pressed():
	$Resultado.visible = !$Resultado.visible
	$ResultadoImg.visible = !$ResultadoImg.visible



func _on_BotonComprobar_pressed():
	if Singleton.correcto == true:
		$BotonComprobar/Good.visible = true
		$BotonComprobar/Wrong.visible = false
		Singleton.bien1 = true
		Singleton.mal1 = false
	else:
		$BotonComprobar/Wrong.visible = true
		if Singleton.bien1 == false:
			Singleton.mal1 = true

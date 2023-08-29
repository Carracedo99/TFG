extends Node2D


var material_seleccionado = 0	#1 --> Erlenmeyer
								#2 --> Pipeta pasteur
								#3 --> Pipeta
								#4 --> Precipitados
								#5 --> Tubo
								#6 --> Bureta
var paso1 = false
var paso2 = false

func _ready():
	pass


func _on_VasoPrecipitados_pressed():
	material_seleccionado = 4
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloRellenar.visible = true
	$Ventana/MaterialRellenar.visible = true
	$Ventana/Rellenar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_Erlenmeyer_pressed():
	material_seleccionado = 1
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloRellenar.visible = true
	$Ventana/MaterialRellenar.visible = true
	$Ventana/Rellenar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_PlacaPetri_pressed():
	material_seleccionado = 2
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloRellenar.visible = true
	$Ventana/MaterialRellenar.visible = true
	$Ventana/Rellenar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_TuboEnsayo_pressed():
	material_seleccionado = 5
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloRellenar.visible = true
	$Ventana/MaterialRellenar.visible = true
	$Ventana/Rellenar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_Rellenar_pressed():
	$Ventana/Resultado3.visible = true
	$Ventana/Exito.visible = true
	
	$Ventana/Rellenar.visible = false
	$Ventana/MaterialRellenar.visible = false
	$Ventana/TituloRellenar.visible = false
	
	if material_seleccionado == 2:
		if $Ventana/MaterialRellenar.get_selected_id() == 1:
			$Ventana/MaterialMezclar.add_item("Pipeta aceite de oliva", 1)
			
	if material_seleccionado == 2:
		if $Ventana/MaterialRellenar.get_selected_id() == 5:
			$Ventana/MaterialMezclar.add_item("Pipeta aceite de semillas", 2)




func _on_BotonComprobar_pressed():
	if paso1 == true && paso2 == true:
		Singleton.correcto4 = true

	if Singleton.correcto4 == true:
		$BotonComprobar/Good.visible = true
		$BotonComprobar/Wrong.visible = false
		Singleton.bien4 = true
		Singleton.mal4 = false
	else:
		$BotonComprobar/Wrong.visible = true	#lo mismo pero con bien2 y mal2
		if Singleton.bien4 == false:
			Singleton.mal4 = true


func _on_Ayuda_pressed():
	$Ventana/Fondo_ayuda.visible = false
	$Ventana/TituloRellenar.visible = false
	$Ventana/MaterialRellenar.visible = false
	$Ventana/Rellenar.visible = false

	$Ventana/Resultado3.visible = false
	$Ventana/Exito.visible = false
	$Ventana/Resultado4.visible = false

	$Ventana/TituloMezclar.visible = false
	$Ventana/MaterialMezclar.visible = false
	$Ventana/MezclarMin.visible = false

	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = true
	$Ventana/Erlenmeyer.visible = true
	$Ventana/PlacaPetri.visible = true
	$Ventana/TuboEnsayo.visible = true
	$Ventana/PesaFiltro.visible = true
	$Ventana/Bureta.visible = true
	#-----------------------------------------------

func _on_Mezclar_pressed():
	$Ventana/TituloRellenar.visible = false
	$Ventana/MaterialRellenar.visible = false
	$Ventana/Rellenar.visible = false

	
	$Ventana/Bureta.visible = false
	$Ventana/Resultado3.visible = false
	$Ventana/Exito.visible = false
	
	$Ventana/Resultado4.visible = false
	
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/MezclarMin.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


	
func _on_MezclarMin_pressed():
	$Ventana/Resultado4.visible = true
	$Ventana/Exito.visible = true
	
	$Ventana/TituloMezclar.visible = false
	$Ventana/MaterialMezclar.visible = false
	$Ventana/MezclarMin.visible = false
	
#---------------------------------------------------------------------------
	
	if $Ventana/MaterialMezclar.get_selected_id() == 1:
		paso1 = true

	if $Ventana/MaterialMezclar.get_selected_id() == 2:
		paso2 = true



func _on_PesaFiltro_pressed():
	material_seleccionado = 3
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloRellenar.visible = true
	$Ventana/MaterialRellenar.visible = true
	$Ventana/Rellenar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------
	


func _on_Bureta_pressed():
	material_seleccionado = 6
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloRellenar.visible = true
	$Ventana/MaterialRellenar.visible = true
	$Ventana/Rellenar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------
	

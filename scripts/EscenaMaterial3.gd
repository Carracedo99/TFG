extends Node2D
#extends "res://scripts/Actividad1.gd"


var material_seleccionado = 0	#1 --> Erlenmeyer
								#2 --> Aforado
								#3 --> Pipeta
								#4 --> Precipitados
								#5 --> Probeta
								#6 --> Bureta
var paso1 = false
var paso2 = false
var paso3 = false


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
	
	if material_seleccionado == 1:
		if $Ventana/MaterialRellenar.get_selected_id() == 0:
			$Ventana/MaterialMezclar.add_item("Erlenmeyer con acético cloroformo", 1)
			$Ventana/MaterialMezclar2.add_item("Erlenmeyer con acético cloroformo", 1)
			
	if material_seleccionado == 1:
		if $Ventana/MaterialRellenar.get_selected_id() == 1:
			$Ventana/MaterialMezclar.add_item("Erlenmeyer con grasa", 2)
			$Ventana/MaterialMezclar2.add_item("Erlenmeyer con grasa", 2)

	if material_seleccionado == 3:
		if $Ventana/MaterialRellenar.get_selected_id() == 2:
			$Ventana/MaterialMezclar.add_item("Pipeta con potasio yoduro", 3)
			$Ventana/MaterialMezclar2.add_item("Pipeta con potasio yoduro", 3)
			
	if material_seleccionado == 5:
		if $Ventana/MaterialRellenar.get_selected_id() == 5:
			$Ventana/MaterialMezclar.add_item("Probeta con agua destilada", 4)
			$Ventana/MaterialMezclar2.add_item("Probeta con agua destilada", 4)


	if material_seleccionado == 6:
		if $Ventana/MaterialRellenar.get_selected_id() == 6:
			$Ventana/MaterialMezclar.add_item("Bureta con sodio tiosulfato 0,01N", 5)
			$Ventana/MaterialMezclar2.add_item("Bureta con sodio tiosulfato 0,01N", 5)


func _on_BotonComprobar_pressed():
	if Singleton.correcto3 == true:
		$BotonComprobar/Good.visible = true
		$BotonComprobar/Wrong.visible = false
		Singleton.bien3 = true
		Singleton.mal3 = false
	else:
		$BotonComprobar/Wrong.visible = true	#lo mismo pero con bien2 y mal2
		if Singleton.bien3 == false:
			Singleton.mal3 = true


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
	$Ventana/MaterialMezclar2.visible = false
	$Ventana/MezclarMin.visible = false

	$Ventana/Bureta.visible = true
	
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
	$Ventana/MaterialMezclar2.visible = true
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
	$Ventana/MaterialMezclar2.visible = false
	$Ventana/MezclarMin.visible = false

		
	#if $Ventana/MaterialMezclar.get_selected_id() == 8:
	#	Singleton.correcto2 = true
#---------------------------------------------------------------------------
	
	if $Ventana/MaterialMezclar.get_selected_id() == 1:
		if $Ventana/MaterialMezclar2.get_selected_id() == 2:
			paso1 = true
			$Ventana/MaterialMezclar.add_item("Mezcla", 10)
			$Ventana/MaterialMezclar2.add_item("Mezcla", 10)

	if $Ventana/MaterialMezclar.get_selected_id() == 2:
		if $Ventana/MaterialMezclar2.get_selected_id() == 1:
			paso1 = true
			$Ventana/MaterialMezclar.add_item("Mezcla", 10)
			$Ventana/MaterialMezclar2.add_item("Mezcla", 10)

#----------------------------------------------------------------------------
	
	if $Ventana/MaterialMezclar.get_selected_id() == 3:
		if $Ventana/MaterialMezclar2.get_selected_id() == 10:
			paso2 = true
			$Ventana/MaterialMezclar.add_item("Mezcla2", 11)
			$Ventana/MaterialMezclar2.add_item("Mezcla2", 11)

	if $Ventana/MaterialMezclar.get_selected_id() == 10:
		if $Ventana/MaterialMezclar2.get_selected_id() == 3:
			paso2 = true
			$Ventana/MaterialMezclar.add_item("Mezcla2", 11)
			$Ventana/MaterialMezclar2.add_item("Mezcla2", 11)


#----------------------------------------------------------------------------
	
	if $Ventana/MaterialMezclar.get_selected_id() == 4:
		if $Ventana/MaterialMezclar2.get_selected_id() == 11:
			paso2 = true
			$Ventana/MaterialMezclar.add_item("Mezcla3", 12)
			$Ventana/MaterialMezclar2.add_item("Mezcla3", 12)

	if $Ventana/MaterialMezclar.get_selected_id() == 11:
		if $Ventana/MaterialMezclar2.get_selected_id() == 4:
			paso2 = true
			$Ventana/MaterialMezclar.add_item("Mezcla3", 12)
			$Ventana/MaterialMezclar2.add_item("Mezcla3", 12)
			
#----------------------------------------------------------------------------
	
	if $Ventana/MaterialMezclar.get_selected_id() == 12:
		if $Ventana/MaterialMezclar2.get_selected_id() == 98:
			paso2 = true
			$Ventana/MaterialMezclar.add_item("Mezcla4", 13)
			$Ventana/MaterialMezclar2.add_item("Mezcla4", 13)

	if $Ventana/MaterialMezclar.get_selected_id() == 98:
		if $Ventana/MaterialMezclar2.get_selected_id() == 12:
			paso2 = true
			$Ventana/MaterialMezclar.add_item("Mezcla4", 13)
			$Ventana/MaterialMezclar2.add_item("Mezcla4", 13)
			


#----------------------------------------------------------------------------

	if $Ventana/MaterialMezclar.get_selected_id() == 13:
		if $Ventana/MaterialMezclar2.get_selected_id() == 5:
			Singleton.correcto3 = true

	if $Ventana/MaterialMezclar.get_selected_id() == 5:
		if $Ventana/MaterialMezclar2.get_selected_id() == 13:
			Singleton.correcto3 = true




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
	

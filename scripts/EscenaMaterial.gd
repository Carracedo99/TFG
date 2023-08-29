extends Node2D
#extends "res://scripts/Actividad1.gd"	--> padre


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
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/Mezclar.visible = true
	
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_Colocar_pressed():
	$Ventana/TituloColocar.visible = !$Ventana/TituloColocar.visible
	$Ventana/Colocar.visible = !$Ventana/Colocar.visible
	$Ventana/MaterialColocar.visible = !$Ventana/MaterialColocar.visible
	
	if $Ventana/MaterialColocar.get_selected_id() == 4:
		$Ventana/Bureta.visible = !$Ventana/Bureta.visible
		$Ventana/Resultado.visible = !$Ventana/Resultado.visible
	
		#Singleton.correcto = true
	
	else:
		$Ventana/Resultado2.visible = true
		$Ventana/Raro.visible = true





func _on_Erlenmeyer_pressed():
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/Mezclar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_PlacaPetri_pressed():
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/Mezclar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------



func _on_TuboEnsayo_pressed():
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/Mezclar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------



func _on_Mezclar_pressed():
	$Ventana/Resultado3.visible = true
	$Ventana/Exito.visible = true
	
	$Ventana/Mezclar.visible = false
	$Ventana/MaterialMezclar.visible = false
	$Ventana/TituloMezclar.visible = false
	
	if $Ventana/MaterialMezclar.get_selected_id() == 98:
		$Ventana/MaterialPesar.add_item("Pesafiltros con harina", 99)


func _on_BotonComprobar_pressed():
	if Singleton.correcto1 == true:
		$BotonComprobar/Good.visible = true
		$BotonComprobar/Wrong.visible = false
		Singleton.bien1 = true
		Singleton.mal1 = false
	else:
		$BotonComprobar/Wrong.visible = true	#lo mismo pero con bien2 y mal2
		if Singleton.bien1 == false:
			Singleton.mal1 = true


func _on_Ayuda_pressed():
	$Ventana/Fondo_ayuda.visible = false
	$Ventana/TituloMezclar.visible = false
	$Ventana/MaterialMezclar.visible = false
	$Ventana/Mezclar.visible = false
	
	$Ventana/TituloColocar.visible = false
	$Ventana/MaterialColocar.visible = false
	$Ventana/Colocar.visible = false
	
	$Ventana/Resultado.visible = false
	$Ventana/Resultado2.visible = false
	$Ventana/Raro.visible = false
	$Ventana/Resultado3.visible = false
	$Ventana/Exito.visible = false
	$Ventana/Resultado4.visible = false
	$Ventana/Resultado5.visible = false

	$Ventana/TituloPesar.visible = false
	$Ventana/MaterialPesar.visible = false
	$Ventana/PesarMin.visible = false
	
	$Ventana/TituloCalentar.visible = false
	$Ventana/MaterialCalentar.visible = false
	$Ventana/CalentarMin.visible = false
	$Ventana/Bureta.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = true
	$Ventana/Erlenmeyer.visible = true
	$Ventana/PlacaPetri.visible = true
	$Ventana/TuboEnsayo.visible = true
	$Ventana/PesaFiltro.visible = true
	$Ventana/Bureta.visible = true
	#-----------------------------------------------

func _on_Pesar_pressed():
	$Ventana/TituloMezclar.visible = false
	$Ventana/MaterialMezclar.visible = false
	$Ventana/Mezclar.visible = false
	
	$Ventana/TituloColocar.visible = false
	$Ventana/MaterialColocar.visible = false
	$Ventana/Colocar.visible = false
	
	$Ventana/Bureta.visible = false
	$Ventana/Resultado.visible = false
	$Ventana/Resultado2.visible = false
	$Ventana/Raro.visible = false
	$Ventana/Resultado3.visible = false
	$Ventana/Exito.visible = false
	
	$Ventana/TituloCalentar.visible = false
	$Ventana/MaterialCalentar.visible = false
	$Ventana/CalentarMin.visible = false
	
	$Ventana/Resultado5.visible = false
	$Ventana/Resultado4.visible = false
	
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloPesar.visible = true
	$Ventana/MaterialPesar.visible = true
	$Ventana/PesarMin.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_Calentar_pressed():
	$Ventana/TituloMezclar.visible = false
	$Ventana/MaterialMezclar.visible = false
	$Ventana/Mezclar.visible = false
	
	$Ventana/TituloColocar.visible = false
	$Ventana/MaterialColocar.visible = false
	$Ventana/Colocar.visible = false
	
	$Ventana/Bureta.visible = false
	$Ventana/Resultado.visible = false
	$Ventana/Resultado2.visible = false
	$Ventana/Raro.visible = false
	$Ventana/Resultado3.visible = false
	$Ventana/Exito.visible = false
	
	$Ventana/TituloPesar.visible = false
	$Ventana/MaterialPesar.visible = false
	$Ventana/PesarMin.visible = false
	
	$Ventana/Resultado4.visible = false
	$Ventana/Resultado5.visible = false
	
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloCalentar.visible = true
	$Ventana/MaterialCalentar.visible = true
	$Ventana/CalentarMin.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------


func _on_CalentarMin_pressed():
	$Ventana/Resultado5.visible = true
	$Ventana/Exito.visible = true
	
	$Ventana/TituloCalentar.visible = false
	$Ventana/MaterialCalentar.visible = false
	$Ventana/CalentarMin.visible = false
	
	if $Ventana/MaterialCalentar.get_selected_id() == 100:
		$Ventana/MaterialPesar.add_item("Pesafiltros con harina seca", 101)
	
	
func _on_PesarMin_pressed():
	$Ventana/Resultado4.visible = true
	$Ventana/Exito.visible = true
	
	$Ventana/TituloPesar.visible = false
	$Ventana/MaterialPesar.visible = false
	$Ventana/PesarMin.visible = false
	
	if $Ventana/MaterialPesar.get_selected_id() == 0:
		$Ventana/MaterialMezclar.add_item("Harina", 98)
	
	if $Ventana/MaterialPesar.get_selected_id() == 99:
		$Ventana/MaterialCalentar.add_item("Pesafiltros con harina", 100)
	
	if $Ventana/MaterialPesar.get_selected_id() == 101:
		Singleton.correcto1 = true



func _on_PesaFiltro_pressed():
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/Mezclar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------



func _on_Bureta_pressed():
	$Ventana/Fondo_ayuda.visible = true
	$Ventana/TituloMezclar.visible = true
	$Ventana/MaterialMezclar.visible = true
	$Ventana/Mezclar.visible = true
	
	#-----------------------------------------------
	$Ventana/VasoPrecipitados.visible = false
	$Ventana/Erlenmeyer.visible = false
	$Ventana/PlacaPetri.visible = false
	$Ventana/TuboEnsayo.visible = false
	$Ventana/PesaFiltro.visible = false
	$Ventana/Bureta.visible = false
	#-----------------------------------------------

extends Node2D

func _on_PortaBuscaPalavras_pressed():
	get_tree().change_scene("res://Cenas/CenasJogaveis/BuscaPalavras.tscn")

func _on_PortaQuartoCostura_pressed():
	get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoCostura.tscn")

func _on_PortaQuartoMontagens_pressed():
	get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoFrases.tscn")

func _on_VoltarMenu_pressed():
	get_tree().change_scene("res://Cenas/CenasMenu/MenuPrincipal.tscn")


extends Node

var bolsa = []

func _ready():
	bolsa = $"/root/Global".retornarPalavras()
	for palavra in bolsa:
		get_node(palavra).free()


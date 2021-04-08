extends Node

var bolsa = []

func _ready():
	bolsa = $"/root/Global".retornarPalavras()
	for palavra in bolsa:
		get_parent().get_node(palavra).queue_free()
	


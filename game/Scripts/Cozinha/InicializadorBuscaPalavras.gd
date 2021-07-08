extends Node

onready var LetrasRef = get_parent().get_node("Letras")

func _ready():
	call_deferred("delete")

func delete():
	var bolsa = []
	var bolsaLetras = []
	var bolsaLetrasAcentuadas = []
	
	bolsa = $"/root/Global".retornarPalavras()
	bolsaLetras = $"/root/Global".retornarLetras()
	bolsaLetrasAcentuadas = $"/root/Global".retornarLetrasAcentuadas()
	
	for palavra in bolsa:
		LetrasRef.get_node(palavra).queue_free()
		LetrasRef.get_node(palavra).free()
	for letra in bolsaLetras:
		LetrasRef.get_node(letra.nome).queue_free()
		LetrasRef.get_node(letra.nome).free()
	for letraAc in bolsaLetrasAcentuadas:
		LetrasRef.get_node(letraAc.nome).queue_free()
		LetrasRef.get_node(letraAc.nome).free()
	
	get_parent().letrasMorfemas = LetrasRef.get_children()

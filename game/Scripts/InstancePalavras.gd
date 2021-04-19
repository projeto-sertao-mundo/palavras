extends Control

onready var palavra = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
onready var letra = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")

var bolsa = []
var bolsaLetras = []
var foiClicado = false;

func InstanciarPalavras():
	bolsa = $"/root/Global".retornarPalavras()
	bolsaLetras = $"/root/Global".retornarLetras()
	
	if get_child(6).name == "Palavras":
		for textoPalavra in bolsa:
			if !get_node("Palavras").has_node("GridPalavra/"+textoPalavra):
				var palavraInstanciada = palavra.instance()
				palavraInstanciada.name = textoPalavra
				self.get_node("Palavras").get_node("GridPalavras").add_child(palavraInstanciada)
				palavraInstanciada.get_node("Label").text = textoPalavra
		
	elif get_child(6).name == "Letras":
		for letraRef in bolsaLetras:
			if !get_node("Letras").has_node("GridLetras/"+letraRef.nome):
				var palavraInstanciada = letra.instance()
				palavraInstanciada.name = letraRef.nome
				self.get_node("Letras").get_node("GridLetras").add_child(palavraInstanciada)
				palavraInstanciada.texture_normal = letraRef.sprite
		

func _ready():
	$"/root/Global".palavra = palavra

func _on_Bolsa_pressed():
	self.show()
	InstanciarPalavras()

func _on_Voltar_pressed():
	self.hide()

func _on_ButtonPalavras_pressed():
	move_child(get_node("Palavras"), 6)
	InstanciarPalavras()

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)
	InstanciarPalavras()

func _on_ButtonRetalhos_pressed():
	move_child(get_node("Retalhos"), 6)
	InstanciarPalavras()

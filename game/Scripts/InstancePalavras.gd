extends Control

onready var palavra = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
var bolsa = []
var foiClicado = false;

func InstanciarPalavras():
	bolsa = $"/root/Global".retornarPalavras()

	for textoPalavra in bolsa:
		if !get_node("Palavras").has_node("GridPalavra/"+textoPalavra):
			var palavraInstanciada = palavra.instance()
			palavraInstanciada.name = textoPalavra
			self.get_node("Palavras").get_node("GridPalavras").add_child(palavraInstanciada)
			palavraInstanciada.get_node("Label").text = textoPalavra
		
	

func _ready():
	$"/root/Global".palavra = palavra

func _on_Bolsa_pressed():
	self.show()
	InstanciarPalavras()

func _on_Voltar_pressed():
	self.hide()

func _on_ButtonPalavras_pressed():
	move_child(get_node("Palavras"), 6)

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)

func _on_ButtonRetalhos_pressed():
	move_child(get_node("Retalhos"), 6)

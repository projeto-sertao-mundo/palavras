extends Control

onready var palavra = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
var bolsa = []
var foiClicado = false;

func InstanciarPalavras():
	bolsa = $"/root/Global".retornarPalavras()

	for textoPalavra in bolsa:
		if !has_node("GridBolsa/"+textoPalavra):
			var palavraInstanciada = palavra.instance()
			palavraInstanciada.name = textoPalavra
			self.get_node("GridBolsa").add_child(palavraInstanciada)
			palavraInstanciada.text = textoPalavra
		
	

func _on_Bolsa_pressed():
	self.show()
	self.get_parent().set_position(Vector2(-150,0))
	InstanciarPalavras()

func _on_Voltar_pressed():
	self.get_parent().set_position(Vector2(0,0))
	self.hide()

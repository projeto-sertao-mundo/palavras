extends KinematicBody2D

var movimento
var velocidade = 700
var palavra = ""
var bolsaNode

func _ready():
	palavra = self.name
	set_process(false)
	bolsaNode = get_parent().get_parent().get_node("Bolsa")
	movimento = (get_parent().get_parent().get_node("Bolsa").get_rect().position - self.position).normalized()

func _process(delta):
	if  bolsaNode.get_rect().position.distance_to(self.position) > 50:
		move_and_slide(movimento * velocidade)
	else:
		if palavra.length() == 1:
			$"/root/Global".adicionarItemBolsaLetra(self)
		else:
			$"/root/Global".adicionarItemBolsaPalavra(self.name)
		self.free()

func _on_TextureButton_pressed():
	set_process(true)

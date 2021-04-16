extends KinematicBody2D

var movimento
var velocidade = 700
export var palavra = ""

func _ready():
	set_process(false)
	movimento = (get_parent().get_node("Bolsa").get_rect().position - self.position).normalized()

func _on_Palavra_pressed():
	set_process(true)

func _process(delta):
	if  get_parent().get_node("Bolsa").get_rect().position.distance_to(self.position) > 50:
		move_and_slide(movimento * velocidade)
	else:
		$"/root/Global".adicionarItemBosla(palavra)
		self.free()


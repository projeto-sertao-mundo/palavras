extends KinematicBody2D

export var isLetraAcentuada = false
var movimento
var velocidade = 700
var palavra = ""
var bolsaNode

var aux

func _ready():
	aux = false
	palavra = self.name
	set_process(false)
	bolsaNode = get_parent().get_parent().get_node("Bolsa")
	movimento = (get_parent().get_parent().get_node("Bolsa").get_rect().position - self.position).normalized()

func _process(_delta):
	if  bolsaNode.get_rect().position.distance_to(self.position) > 50:
		var _ignore = move_and_slide(movimento * velocidade)
	else:
		if isLetraAcentuada:
			$"/root/Global".adicionarItemBolsaLetraAcentuada(self)
		elif palavra.length() == 1:
			$"/root/Global".adicionarItemBolsaLetra(self)
		else:
			$"/root/Global".adicionarItemBolsaPalavra(self.name)
		$"/root/Global".AdicionarPalavraEncontrada()
		self.free()

func _on_TextureButton_pressed():
	if ($"/root/TutorialGlobal".tutorialPos == 4 || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".CozinhaCompleted):
		set_process(true)
		if ($"/root/TutorialGlobal".tutorialPos == 4):
			get_parent().get_parent().get_node("Tutorial2").Tutorial5()

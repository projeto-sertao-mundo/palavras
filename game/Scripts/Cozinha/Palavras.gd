extends KinematicBody2D

export var isLetraAcentuada = false
export var isMorfema = false
export(Vector2) var posicao
var movimento
var velocidade = 700
var palavra = ""
var bolsaNode
var firstNode
var clicked = false
var instancia

var aux

func _ready():
	
	firstNode = get_parent().get_parent()
	aux = false
	palavra = self.name
	set_process(false)
	bolsaNode = firstNode.get_node("Bolsa")
	movimento = (firstNode.get_node("Bolsa").get_rect().position - self.position).normalized()

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
		firstNode.get_node("AnimationPlayer").play("BolsaShake")

		firstNode.lettersReach += 1
		firstNode.AtualizeLetrasMorfemas(self)
		if (firstNode.letraDestacada == self):
			firstNode.letraDestacada = null
		self.free()

func SetRef(var ins):
	instancia = ins

func _on_TextureButton_pressed():
	if ($"/root/TutorialGlobal".tutorialPos == 4 || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".CozinhaCompleted):
		if (!get_parent().get_parent().bolsaAberta):
			if !clicked:
				firstNode.lettersClick += 1
				get_parent().get_parent().TocarLetraEncontrada()
			clicked = true
			if (instancia != null):
				instancia.get_node("AnimationPlayer").play("End")
			set_process(true)
			if ($"/root/TutorialGlobal".tutorialPos == 4 && !self.isMorfema):
				firstNode.get_node("Tutorial2").Tutorial5()

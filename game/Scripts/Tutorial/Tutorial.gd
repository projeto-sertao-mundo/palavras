extends Control

export(NodePath) var D1
export(NodePath) var D2
export(NodePath) var D3
export(NodePath) var D4

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)
onready var dialogo4 = get_node(D4)

var dialogueEnded

var auxD

func _ready():
	if ($"/root/TutorialGlobal".willDoTutorial):
		
		self.visible = true
		auxD = 0
		
		if ($"/root/TutorialGlobal".tutorialPos == 0):
			self.visible = true
			dialogueEnded = false
			Tutorial1()
		elif ($"/root/TutorialGlobal".tutorialPos == 2):
			Tutorial2()
		elif($"/root/TutorialGlobal".CozinhaCompleted && !$"/root/TutorialGlobal".CosturaCompleted):
			Tutorial12()
			$"/root/TutorialGlobal".lockCozinha = true
		elif ($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".CosturaCompleted && !$"/root/TutorialGlobal".FrasesCompleted && $"/root/Global".retalhos.size() > 0):
			$"/root/TutorialGlobal".tutorialPos = 20
			Tutorial21()
		elif $"/root/Global".retalhos.size() == 0:
			self.visible = false
		elif ($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".CosturaCompleted && $"/root/TutorialGlobal".FrasesCompleted):
			self.visible = false
			$"/root/TutorialGlobal".lockCozinha = false
			$"/root/TutorialGlobal".lockCostura = false
			$"/root/TutorialGlobal".lockFrases = false
		else:
			self.visible = false


func Tutorial1():
	if (auxD == 0):
		displayString(dialogo1)

func Tutorial2():
	if (auxD == 1):
		dialogo1.percent_visible = 0
		displayString(dialogo2)

func Tutorial12():
	if (auxD == 0):
		dialogo2.percent_visible = 0
		displayString(dialogo3)

func Tutorial21():
	if (auxD == 0):
		dialogo3.percent_visible = 0
		displayString(dialogo4)

func displayString(var dialogo):
	
	auxD += 1
	dialogueEnded = false
	
	var cont = 0
	var textCont = dialogo.get_text().length()
	var soma = float(1.0 / textCont)
	
	while (cont < 1):
		cont += soma * 2
		yield(Yield.yield_wait(0.001, self.get_parent()), "completed")
		dialogo.percent_visible = cont
	
	$"/root/TutorialGlobal".tutorialPos += 1
	
	if ($"/root/TutorialGlobal".tutorialPos == 2):
		$"/root/TutorialGlobal".lockCozinha = false
		initializeAnim("Seta")
		get_node("Seta").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 12):
		$"/root/TutorialGlobal".lockCozinha = true
		$"/root/TutorialGlobal".lockCostura = false
		initializeAnim("SetaCostura")
		get_node("SetaCostura").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 21):
		$"/root/TutorialGlobal".lockCozinha = true
		$"/root/TutorialGlobal".lockCostura = true
		$"/root/TutorialGlobal".lockFrases = false
		initializeAnim("SetaCartoes")
		get_node("SetaCartoes").visible = true
	
	print($"/root/TutorialGlobal".tutorialPos)
	
	dialogueEnded = true

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		if ($"/root/TutorialGlobal".tutorialPos == 1):
			Tutorial2()


func _on_Sim_pressed():
	$"/root/TutorialGlobal".willDoTutorial = true
	$"/root/TutorialGlobal".lockCozinha = true
	$"/root/TutorialGlobal".lockCostura = true
	$"/root/TutorialGlobal".lockFrases = true
	_ready()

func initializeAnim(var animat):
	var anim = get_parent().get_node("AnimationPlayer").get_animation(animat)
	anim.set_loop(true)
	get_parent().get_node("AnimationPlayer").play(animat)

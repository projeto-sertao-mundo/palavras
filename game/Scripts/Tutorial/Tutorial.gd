extends Control

export(NodePath) var D1
export(NodePath) var D2
export(NodePath) var D3

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)

var dialogueEnded

func _ready():
	if ($"/root/TutorialGlobal".willDoTutorial):
		self.visible = true
		if ($"/root/TutorialGlobal".tutorialPos == 0):
			self.visible = true
			dialogueEnded = false
			Tutorial1()
		elif ($"/root/TutorialGlobal".tutorialPos == 2):
			Tutorial2()
		elif($"/root/TutorialGlobal".CozinhaCompleted):
			Tutorial12()
	else:
		self.visible = false

func Tutorial1():
	displayString(dialogo1)

func Tutorial2():
	dialogo1.percent_visible = 0
	displayString(dialogo2)

func Tutorial12():
	dialogo2.percent_visible = 0
	displayString(dialogo3)	

func displayString(var dialogo):
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
		get_node("Seta").visible = true
	if ($"/root/TutorialGlobal".tutorialPos == 12):
		$"/root/TutorialGlobal".lockCozinha = true
		$"/root/TutorialGlobal".lockCostura = false
		get_node("SetaCostura").visible = true
	
	dialogueEnded = true

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		if ($"/root/TutorialGlobal".tutorialPos == 1):
			Tutorial2()

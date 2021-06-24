extends Control

var dialogueEnded

export(NodePath) var D1
export(NodePath) var D2
export(NodePath) var D3
export(NodePath) var D4
export(NodePath) var D5
export(NodePath) var D6
export(NodePath) var D7

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)
onready var dialogo4 = get_node(D4)
onready var dialogo5 = get_node(D5)
onready var dialogo6 = get_node(D6)
onready var dialogo7 = get_node(D7)

var auxD

func _ready():
	auxD = 21
	if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".FrasesCompleted):
		self.visible = true
	else:
		self.visible = false

func Tutorial22():
	if (auxD == 21):
		get_node("SetaCartoes")
		displayString(dialogo1)

func Tutorial23():
	if (auxD == 22):
		dialogo1.percent_visible = 0
	displayString(dialogo2)

func Tutorial24():
	if (auxD == 23):
		dialogo2.percent_visible = 0
		displayString(dialogo3)

func Tutorial25():
	if (auxD == 24):
		dialogo3.percent_visible = 0
		displayString(dialogo4)

func Tutorial26():
	if (auxD == 25):
		dialogo4.percent_visible = 0
		displayString(dialogo5)

func Tutorial27():
	if (auxD == 26):
		dialogo5.percent_visible = 0
		displayString(dialogo6)

func Tutorial28():
	if (auxD == 27):
		dialogo6.percent_visible = 0
		displayString(dialogo7)
		get_node("SetaConfirmar").visible = false


func displayString(var dialogo):
	auxD += 1
	dialogueEnded = false
	
	var textCont = dialogo.get_text().length()
	var soma = float(1.0 / textCont)
	var cont = 0
	
	while (cont < 1):
		cont += soma * 2
		yield(Yield.yield_wait(0.001, self), "completed")
		dialogo.percent_visible = cont
	
	$"/root/TutorialGlobal".tutorialPos += 1
	dialogo.percent_visible = 1
	dialogueEnded = true
	
	if ($"/root/TutorialGlobal".tutorialPos == 22):
		get_node("SetaCartoes").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 23):
		get_node("SetaCartoes").visible = false
		get_node("SetaRetalhos").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 24):
		get_node("SetaRetalhos").visible = false
		get_node("SetaConfirmar").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 25):
		get_node("SetaConfirmar").visible = false
		get_node("SetaCartoesAba").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 26):
		get_node("SetaCartoesAba").visible = false
		get_node("SetaCartaoPronto").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 27):
		get_node("SetaCartaoPronto").visible = false
		get_node("SetaConfirmar").visible = true
	#elif ($"/root/TutorialGlobal".tutorialPos == 25):
		#get_node("SetaCores").visible = false
		#get_node("SetaApagar").visible = true

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		pass
		if ($"/root/TutorialGlobal".tutorialPos == 27):
			Tutorial28()
		elif ($"/root/TutorialGlobal".tutorialPos == 28):
			self.visible = false
			$"/root/TutorialGlobal".lockCozinha = false
			$"/root/TutorialGlobal".lockCostura = false
			$"/root/TutorialGlobal".lockFrases = false
			$"/root/TutorialGlobal".FrasesCompleted = true

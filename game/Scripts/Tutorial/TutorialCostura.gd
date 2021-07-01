extends Control

var dialogueEnded
var colorSeted

export(NodePath) var D1
export(NodePath) var D2
export(NodePath) var D3
export(NodePath) var D4
export(NodePath) var D5
export(NodePath) var D6
export(NodePath) var D7
export(NodePath) var D8

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)
onready var dialogo4 = get_node(D4)
onready var dialogo5 = get_node(D5)
onready var dialogo6 = get_node(D6)
onready var dialogo7 = get_node(D7)
onready var dialogo8 = get_node(D8)

var auxD

func _ready():
	#aux = false
	auxD = 12
	colorSeted = false
	if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".CosturaCompleted):
		self.visible = true
	
	elif (!$"/root/TutorialGlobal".willDoTutorial):
		self.visible = false
	else:
		self.visible = false

func ChangeSetedColor():
	if (!colorSeted):
		colorSeted = true
	else:
		Tutorial17()

func Tutorial13():
	if (auxD == 12):
		displayString(dialogo1)

func Tutorial14():
	if (auxD == 13):
		dialogo1.percent_visible = 0
		displayString(dialogo2)

func Tutorial15():
	if (auxD == 14):
		dialogo2.percent_visible = 0
		displayString(dialogo3)

func Tutorial16():
	if (auxD == 15):
		dialogo3.percent_visible = 0
		displayString(dialogo4)

func Tutorial17():
	if (auxD == 16):
		dialogo4.percent_visible = 0
		displayString(dialogo5)

func Tutorial18():
	if (auxD == 17):
		dialogo5.percent_visible = 0
		displayString(dialogo6)

func Tutorial19():
	if (auxD == 18):
		dialogo6.percent_visible = 0
		displayString(dialogo7)

func Tutorial20():
	if (auxD == 19):
		dialogo7.percent_visible = 0
		displayString(dialogo8)
		get_node("SetaRetalhosAba").visible = false

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
	
	if ($"/root/TutorialGlobal".tutorialPos == 14):
		initializeAnim("SetaRetalho")
		get_node("SetaRetalho").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 15):
		get_node("SetaRetalho").visible = false
		initializeAnim("SetaFormas")
		get_node("SetaFormas").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 16):
		get_node("SetaFormas").visible = false
		initializeAnim("SetaCores")
		get_node("SetaCores").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 17):
		get_node("SetaCores").visible = false
		initializeAnim("SetaApagar")
		get_node("SetaApagar").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 18):
		get_node("SetaApagar").visible = false
		initializeAnim("SetaConfirmar")
		get_node("SetaConfirmar").visible = true
	elif ($"/root/TutorialGlobal".tutorialPos == 19):
		get_node("SetaConfirmar").visible = false
		initializeAnim("SetaRetalhosAba")
		get_node("SetaRetalhosAba").visible = true
		#get_parent().get_node("CosturaPopUp/PalavrasPopUp")._on_ButtonRetalhos_pressed()
	elif ($"/root/TutorialGlobal".tutorialPos == 20):
		get_node("SetaLixeira").visible = true
		initializeAnim("SetaLixeira")

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		pass
		if ($"/root/TutorialGlobal".tutorialPos == 13):
			Tutorial14()
		elif ($"/root/TutorialGlobal".tutorialPos == 17):
			Tutorial18()
		elif ($"/root/TutorialGlobal".tutorialPos == 18):
			Tutorial19()
		elif ($"/root/TutorialGlobal".tutorialPos == 19):
			Tutorial20()
		elif ($"/root/TutorialGlobal".tutorialPos == 20):
			self.visible = false
			$"/root/TutorialGlobal".lockCozinha = false
			$"/root/TutorialGlobal".lockCostura = false
			$"/root/TutorialGlobal".CosturaCompleted = true
			get_node("SetaLixeira").visible = false
		
#		elif ($"/root/TutorialGlobal".tutorialPos == 5):
#			Tutorial6()
#		elif ($"/root/TutorialGlobal".tutorialPos == 7):
#			Tutorial8()
#		elif ($"/root/TutorialGlobal".tutorialPos == 9):
#			Tutorial10()
#		elif ($"/root/TutorialGlobal".tutorialPos == 10):
#			Tutorial11()
#		elif ($"/root/TutorialGlobal".tutorialPos == 11):
#			self.visible = false
#			$"/root/TutorialGlobal".CozinhaCompleted = true

func initializeAnim(var animat):
	pass
	var anim = get_parent().get_node("AnimationPlayer").get_animation(animat)
	anim.set_loop(true)
	get_parent().get_node("AnimationPlayer").play(animat)


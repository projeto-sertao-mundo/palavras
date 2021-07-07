extends Control

export(NodePath) var D1
export(NodePath) var D2
export(NodePath) var D3
export(NodePath) var D4
export(NodePath) var D5
export(NodePath) var D6
export(NodePath) var D7
export(NodePath) var D8
export(NodePath) var D9

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)
onready var dialogo4 = get_node(D4)
onready var dialogo5 = get_node(D5)
onready var dialogo6 = get_node(D6)
onready var dialogo7 = get_node(D7)
onready var dialogo8 = get_node(D8)
onready var dialogo9 = get_node(D9)

var dialogueEnded
var auxD
var aux

func _ready():
	auxD = 2
	aux = false
	if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".CozinhaCompleted):
		self.visible = true
		if ($"/root/TutorialGlobal".tutorialPos == 2):
			self.visible = true
			dialogueEnded = false
			Tutorial3()

func Tutorial3():
	if (auxD == 2):
		displayString(dialogo1)

func Tutorial4():
	if (auxD == 3):
		displayString(dialogo2)
		dialogo1.percent_visible = 0

func Tutorial5():
	if (auxD == 4):
		if (!aux):
			self.visible = true
			aux = true
			print("a")
			displayString(dialogo3)
			dialogo1.percent_visible = 0
			dialogo2.percent_visible = 0

func Tutorial6():
	if (auxD == 5):
		displayString(dialogo4)
		dialogo2.percent_visible = 0
		dialogo3.percent_visible = 0
		initializeAnim("SetaBolsa")
		get_node("SetaBolsa").visible = true

func Tutorial7():
	if (auxD == 6):
		displayString(dialogo5)
		dialogo3.percent_visible = 0
		dialogo4.percent_visible = 0
		get_node("SetaBolsa").visible = false

func Tutorial8():
	if (auxD == 7):
		displayString(dialogo6)
		dialogo4.percent_visible = 0
		dialogo5.percent_visible = 0
		get_node("SetaBolsa").visible = false
		initializeAnim("SetaMorfemas")
		get_node("SetaMorfemas").visible = true

func Tutorial9():
	if (auxD == 8):
		displayString(dialogo7)
		dialogo5.percent_visible = 0
		dialogo6.percent_visible = 0
		get_node("SetaMorfemas").visible = false
		initializeAnim("SetaMorfemasDesc")
		get_node("SetaMorfemasDesc").visible = true

func Tutorial10():
	if (auxD == 9):
		displayString(dialogo8)
		dialogo6.percent_visible = 0
		dialogo7.percent_visible = 0
		get_node("SetaMorfemasDesc").visible = false
		get_parent().get_node("BolsaJuice").play("BolsaOut")
		get_parent().get_node("PalavrasPopUp").isShow = false

func Tutorial11():
	if (auxD == 10):
		displayString(dialogo9)
		dialogo7.percent_visible = 0
		dialogo8.percent_visible = 0
		initializeAnim("SetaSair")
		get_node("SetaSair").visible = true

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

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		if ($"/root/TutorialGlobal".tutorialPos == 3):
			Tutorial4()
		elif ($"/root/TutorialGlobal".tutorialPos == 4):
			self.visible = false
		elif ($"/root/TutorialGlobal".tutorialPos == 5):
			Tutorial6()
		elif ($"/root/TutorialGlobal".tutorialPos == 7):
			Tutorial8()
		elif ($"/root/TutorialGlobal".tutorialPos == 9):
			Tutorial10()
		elif ($"/root/TutorialGlobal".tutorialPos == 10):
			Tutorial11()
		elif ($"/root/TutorialGlobal".tutorialPos == 11):
			self.visible = false
			$"/root/TutorialGlobal".CozinhaCompleted = true

func initializeAnim(var animat):
	var anim = get_parent().get_node("AnimationPlayer").get_animation(animat)
	anim.set_loop(true)
	get_parent().get_node("AnimationPlayer").play(animat)

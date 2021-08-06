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
export(NodePath) var D10

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)
onready var dialogo4 = get_node(D4)
onready var dialogo5 = get_node(D5)
onready var dialogo6 = get_node(D6)
onready var dialogo7 = get_node(D7)
onready var dialogo8 = get_node(D8)
onready var dialogo9 = get_node(D9)
onready var dialogo10 = get_node(D10)

var cont = 0
var dialogo
var dialogueEnded
var auxD
var aux

func _ready():
	auxD = 2
	aux = false
	if (!$"/root/TutorialGlobal".isRedoingTutorial):
		if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".CozinhaCompleted):
			self.visible = true
			$VoAnimation.play("In")
			if ($"/root/TutorialGlobal".tutorialPos == 2):
				$VoAnimation.play("In")
				dialogueEnded = false
	else:
		self.visible = true
		$VoAnimation.play("In")
		$"/root/TutorialGlobal".tutorialPos = 2
		$VoAnimation.play("In")
		dialogueEnded = false
		$"/root/TutorialGlobal".CozinhaCompleted = false
	

func Tutorial3():
	if (auxD == 2):
		displayString(dialogo1)

func Tutorial4():
	if (!$"/root/TutorialGlobal".isRedoingTutorial):
		if (auxD == 3):
			displayString(dialogo2)
			dialogo1.percent_visible = 0
	else:
		Tutorial6()
		auxD = 5
		dialogo1.percent_visible = 0
		$"/root/TutorialGlobal".tutorialPos += 2

#func Tutorial2_5():
#	self.visible = true
#	aux = true
#	displayString(dialogo2_5)
#	dialogo2.percent_visible = 0
#	initializeAnim("SetaAjuda")
#	get_node("SetaAjuda").visible = true
#	auxD -= 1
#	$"/root/TutorialGlobal".tutorialPos -= 1

func Tutorial5():
	get_node("SetaAjuda").visible = false
	if (auxD == 4):
		if (!aux):
			#$VoAnimation.play("In")
			displayString(dialogo3)
			aux = true
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
		get_parent().bolsaAberta = false
		get_parent().get_node("PalavrasPopUp").isShow = false

func Tutorial11():
	if (auxD == 10):
		displayString(dialogo10)
		dialogo8.percent_visible = 0
		dialogo7.percent_visible = 0
		initializeAnim("SetaAjuda")
		get_node("SetaAjuda").visible = true

func Tutorial12():
	if (auxD == 11):
		displayString(dialogo9)
		dialogo8.percent_visible = 0
		dialogo10.percent_visible = 0
		initializeAnim("SetaSair")
		get_node("SetaSair").visible = true

func displayString(var dialogoR):
	dialogo = dialogoR
	auxD += 1
	dialogueEnded = false
	
	cont = 0
	
	$Timer.start()

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		if ($"/root/TutorialGlobal".tutorialPos == 3):
			Tutorial4()
		elif ($"/root/TutorialGlobal".tutorialPos == 4):
			#$VoAnimation.play("Out")
			dialogo4.percent_visible = 0
		elif ($"/root/TutorialGlobal".tutorialPos == 5):
			Tutorial6()
		elif ($"/root/TutorialGlobal".tutorialPos == 7):
			Tutorial8()
		elif ($"/root/TutorialGlobal".tutorialPos == 9):
			Tutorial10()
		elif ($"/root/TutorialGlobal".tutorialPos == 10):
			Tutorial11()
		elif ($"/root/TutorialGlobal".tutorialPos == 11):
			Tutorial12()
			get_node("SetaAjuda").visible = false
		elif ($"/root/TutorialGlobal".tutorialPos == 12):
			$VoAnimation.play("Out")
			get_node("SetaSair").visible = false
			$"/root/TutorialGlobal".tutorialPos -= 1
			$"/root/TutorialGlobal".CozinhaCompleted = true
			$"/root/TutorialGlobal".isRedoingTutorial = false

func initializeAnim(var animat):
	var anim = get_parent().get_node("AnimationPlayer").get_animation(animat)
	anim.set_loop(true)
	get_parent().get_node("AnimationPlayer").play(animat)


func _on_VoAnimation_animation_finished(anim_name):
	if (anim_name == "Out" && auxD == 12):
		self.visible = false
	elif (anim_name == "In"):
		Tutorial3()


func _on_Timer_timeout():
	var textCont = dialogo.get_text().length()
	var soma = float(1.0 / textCont)
	
	if (dialogo.percent_visible < 1):
		cont += soma
		dialogo.percent_visible = cont
	else:
		$Timer.stop()
		
		$"/root/TutorialGlobal".tutorialPos += 1
		dialogo.percent_visible = 1
		dialogueEnded = true

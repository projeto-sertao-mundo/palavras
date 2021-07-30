extends Control

var dialogueEnded
var colorSeted

export(NodePath) var D0
export(NodePath) var D1
export(NodePath) var D2
export(NodePath) var D3
export(NodePath) var D4
export(NodePath) var D5
export(NodePath) var D6
export(NodePath) var D7
export(NodePath) var D8

onready var dialogo0 = get_node(D0)
onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)
onready var dialogo3 = get_node(D3)
onready var dialogo4 = get_node(D4)
onready var dialogo5 = get_node(D5)
onready var dialogo6 = get_node(D6)
onready var dialogo7 = get_node(D7)
onready var dialogo8 = get_node(D8)

var dialogo
var cont
var auxD = 11

#func _process(delta):
#	print(colorSeted)
#	print($"/root/TutorialGlobal".tutorialPos)

func _ready():
	#aux = false
	colorSeted = false
	if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".CosturaCompleted):
		self.visible = true
		$VoAnimation.play("In")
		$"/root/TutorialGlobal".tutorialPos -= 1
	
	elif (!$"/root/TutorialGlobal".willDoTutorial):
		self.visible = false
	else:
		self.visible = false

func ChangeSetedColor():
	if (!colorSeted):
		colorSeted = true
	else:
		Tutorial17()

func Tutorial0():
	if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".CosturaCompleted):
		displayString(dialogo0)

func Tutorial13():
	if (auxD == 12):
		dialogo0.percent_visible = 0
		displayString(dialogo1)
		initializeAnim("SetaMaquina")
		get_node("SetaMaquina").visible = true

func Tutorial14():
	if (auxD == 13):
		dialogo1.percent_visible = 0
		get_node("SetaMaquina").visible = false
		displayString(dialogo2)
		initializeAnim("SetaRetalho")
		get_node("SetaRetalho").visible = true

func Tutorial15():
	if (auxD == 14):
		dialogo2.percent_visible = 0
		displayString(dialogo3)
		get_node("SetaRetalho").visible = false
		initializeAnim("SetaFormas")
		get_node("SetaFormas").visible = true

func Tutorial16():
	if (auxD == 15):
		dialogo3.percent_visible = 0
		displayString(dialogo4)
		get_node("SetaFormas").visible = false
		initializeAnim("SetaCores")
		get_node("SetaCores").visible = true

func Tutorial17():
	if (auxD == 16):
		dialogo4.percent_visible = 0
		displayString(dialogo5)
		get_node("SetaCores").visible = false
		initializeAnim("SetaApagar")
		get_node("SetaApagar").visible = true

func Tutorial18():
	if (auxD == 17):
		dialogo5.percent_visible = 0
		displayString(dialogo6)
		get_node("SetaApagar").visible = false
		initializeAnim("SetaConfirmar")
		get_node("SetaConfirmar").visible = true

func Tutorial19():
	if (auxD == 18):
		dialogo6.percent_visible = 0
		displayString(dialogo7)
		get_node("SetaConfirmar").visible = false
		initializeAnim("SetaRetalhosAba")
		get_node("SetaRetalhosAba").visible = true

func Tutorial20():
	if (auxD == 19):
		dialogo7.percent_visible = 0
		displayString(dialogo8)
		get_node("SetaRetalhosAba").visible = false
		get_node("SetaLixeira").visible = true
		initializeAnim("SetaLixeira")

func displayString(var dialogoR):
	auxD += 1
	dialogo = dialogoR
	dialogueEnded = false
	
	cont = 0
	
	$Timer.start()

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		if (auxD == 12):
			Tutorial13()
		elif ($"/root/TutorialGlobal".tutorialPos == 17):
			Tutorial18()
		elif ($"/root/TutorialGlobal".tutorialPos == 18):
			Tutorial19()
		elif ($"/root/TutorialGlobal".tutorialPos == 19):
			Tutorial20()
		elif ($"/root/TutorialGlobal".tutorialPos == 20):
			$"/root/TutorialGlobal".lockCozinha = false
			$"/root/TutorialGlobal".lockCostura = false
			$"/root/TutorialGlobal".CosturaCompleted = true
			get_node("SetaLixeira").visible = false
			$VoAnimation.play("Out")
		
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

func _on_Maquina_pressed():
	if ($"/root/TutorialGlobal".tutorialPos == 13):
		Tutorial14()

func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "In"):
		Tutorial0()
	elif (anim_name == "Out"):
		self.visible = false

func _on_Timer_timeout():
	var textCont = dialogo.get_text().length()
	var soma = float(1.0 / textCont)
	
	if (dialogo.percent_visible < 1):
		cont += soma
		dialogo.percent_visible = cont
	else:
		$Timer.stop()
		
		if (auxD > 0):
			$"/root/TutorialGlobal".tutorialPos += 1
			dialogo.percent_visible = 1
			dialogueEnded = true

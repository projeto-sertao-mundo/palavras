extends Control

var dialogueEnded

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

var dialogo
var cont
var auxD



func _ready():
	if (!$"/root/TutorialGlobal".FrasesCompleted):
		$VoAnimation.play("In")
	
	auxD = 21
	if ($"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".FrasesCompleted):
		self.visible = true
	else:
		self.visible = false

func Tutorial22():
	if (auxD == 21):
		#get_node("SetaCartoes")
		displayString(dialogo1)
		initializeAnim("SetaCartoes")
		get_node("SetaCartoes").visible = true

func Tutorial23():
	if (auxD == 22):
		dialogo1.percent_visible = 0
		displayString(dialogo2)
		get_node("SetaCartoes").visible = false
		initializeAnim("SetaRetalhos")
		get_node("SetaRetalhos").visible = true

func Tutorial24():
	if (auxD == 23):
		dialogo2.percent_visible = 0
		displayString(dialogo3)
		get_node("SetaRetalhos").visible = false
		initializeAnim("SetaConfirmar")
		get_node("SetaConfirmar").visible = true

func Tutorial25():
	if (auxD == 24):
		dialogo3.percent_visible = 0
		displayString(dialogo4)
		get_node("SetaConfirmar").visible = false
		initializeAnim("SetaCartoesAba")
		get_node("SetaCartoesAba").visible = true

func Tutorial26():
	if (auxD == 25):
		dialogo4.percent_visible = 0
		displayString(dialogo5)
		get_node("SetaCartoesAba").visible = false
		initializeAnim("SetaCartaoPronto")
		get_node("SetaCartaoPronto").visible = true

func Tutorial27():
	if (auxD == 26):
		dialogo5.percent_visible = 0
		displayString(dialogo6)
		get_node("SetaCartaoPronto").visible = false
		get_node("SetaDescartar").visible = true
		initializeAnim("SetaDescartar")

func Tutorial28():
	if (auxD == 27):
		dialogo6.percent_visible = 0
		displayString(dialogo7)
		get_node("SetaDescartar").visible = false


func Tutorial29():
	if (auxD == 28):
		dialogo7.percent_visible = 0
		displayString(dialogo8)
		initializeAnim("SetaConfirmar")
		get_node("SetaConfirmar").visible = true


func displayString(var dialogoR):
	auxD += 1
	dialogueEnded = false
	dialogo = dialogoR
	
	var textCont = dialogo.get_text().length()
	var soma = float(1.0 / textCont)
	cont = 0
	
	$Timer.start()

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		pass
		if ($"/root/TutorialGlobal".tutorialPos == 27):
			Tutorial28()
		elif ($"/root/TutorialGlobal".tutorialPos == 28):
			Tutorial29()
		elif($"/root/TutorialGlobal".tutorialPos == 29):
			$VoAnimation.play("Out")
			$"/root/TutorialGlobal".lockCozinha = false
			$"/root/TutorialGlobal".lockCostura = false
			$"/root/TutorialGlobal".lockFrases = false
			$"/root/TutorialGlobal".FrasesCompleted = true
			get_node("SetaConfirmar").visible = false

func initializeAnim(var animat):
	var anim = get_parent().get_node("AnimationPlayer").get_animation(animat)
	anim.set_loop(true)
	get_parent().get_node("AnimationPlayer").play(animat)

func _on_VoAnimation_animation_finished(anim_name):
	if (anim_name == "In"):
		Tutorial22()
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
		$"/root/TutorialGlobal".tutorialPos += 1
		dialogo.percent_visible = 1
		dialogueEnded = true

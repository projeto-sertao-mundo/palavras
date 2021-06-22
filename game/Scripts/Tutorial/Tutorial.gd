extends Control

export(NodePath) var D1
export(NodePath) var D2

onready var dialogo1 = get_node(D1)
onready var dialogo2 = get_node(D2)

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

func Tutorial1():
	displayString(dialogo1)

func Tutorial2():
	dialogo1.percent_visible = 0
	displayString(dialogo2)

func displayString(var dialogo):
	dialogueEnded = false
	
	var cont = 0
	
	while (cont < 1):
		cont += 0.01
		yield(Yield.yield_wait(0.01, self.get_parent()), "completed")
		dialogo.percent_visible = cont
	
	$"/root/TutorialGlobal".tutorialPos += 1
	
	if ($"/root/TutorialGlobal".tutorialPos == 2):
		$"/root/TutorialGlobal".lockCozinha = false
		get_node("Seta").visible = true
	
	dialogueEnded = true

func _input(event):
	if (event is InputEventScreenTouch) && dialogueEnded:
		if ($"/root/TutorialGlobal".tutorialPos == 1):
			Tutorial2()

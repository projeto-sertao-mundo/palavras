extends Control

onready var dialogo = get_node("Label0")
var cont = 0
var canHide

func _ready():
	if (!$"/root/TutorialGlobal".willDoTutorial || ($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".FrasesCompleted && $"/root/TutorialGlobal".CosturaCompleted)):
		self.visible = true

func _on_RedoTutorial_pressed():
	$"/root/TutorialGlobal".isRedoingTutorial = true
	$"/root/TutorialGlobal".lockCostura = true
	$"/root/TutorialGlobal".lockCozinha = true
	$"/root/TutorialGlobal".lockFrases = true
	
	$AnimationRedoTutorial.play("InDialogo")
	dialogo = $Label0
	cont = 0

func _on_TimerRedo_timeout():
	var textCont = dialogo.get_text().length()
	var soma = float(1.0 / textCont)
	
	if (dialogo.percent_visible < 1):
		cont += soma
		dialogo.percent_visible = cont
	else:
		$TimerRedo.stop()
		
		if (dialogo.name != "Label0"):
			canHide = true
			$"/root/TutorialGlobal".isRedoingTutorial = false


func _on_AnimationRedoTutorial_animation_finished(anim_name):
	if (anim_name == "InDialogo"):
		$TimerRedo.start()

func _on_PortaBuscaPalavras_pressed():
	if ($"/root/Global".contPalavrasEncontradas == 43):
		if ($"/root/TutorialGlobal".isRedoingTutorial):
			dialogo = $LockCompletedLetras
			$Label0.percent_visible = 0
			$LockNoLetraCostura.percent_visible = 0
			$LockNoBordadoCartoes.percent_visible = 0
			cont = 0
			$TimerRedo.start()
	elif (!$"/root/TutorialGlobal".willDoTutorial):
		$"/root/TutorialGlobal".lockCostura = false
		$"/root/TutorialGlobal".lockCozinha = false
		$"/root/TutorialGlobal".lockFrases = false
		get_parent()._on_PortaBuscaPalavras_pressed()
func _on_PortaQuartoCostura_pressed():
	if ($"/root/Global".contPalavrasEncontradas == 0):
		if ($"/root/TutorialGlobal".isRedoingTutorial):
			dialogo = $LockNoLetraCostura
			$LockNoBordadoCartoes.percent_visible = 0
			$Label0.percent_visible = 0
			$LockCompletedLetras.percent_visible = 0
			cont = 0
			$TimerRedo.start()
	elif (!$"/root/TutorialGlobal".willDoTutorial):
		$"/root/TutorialGlobal".lockCostura = false
		$"/root/TutorialGlobal".lockCozinha = false
		$"/root/TutorialGlobal".lockFrases = false
		get_parent()._on_PortaQuartoCostura_pressed()
func _on_PortaQuartoMontagens_pressed():
	if ($"/root/Global".retalhos.size() == 0):
		if ($"/root/TutorialGlobal".isRedoingTutorial):
			dialogo = $LockNoBordadoCartoes
			$LockCompletedLetras.percent_visible = 0
			$LockNoLetraCostura.percent_visible = 0
			$Label0.percent_visible = 0
			cont = 0
			$TimerRedo.start()
	elif (!$"/root/TutorialGlobal".willDoTutorial):
		$"/root/TutorialGlobal".lockCostura = false
		$"/root/TutorialGlobal".lockCozinha = false
		$"/root/TutorialGlobal".lockFrases = false
		get_parent()._on_PortaQuartoMontagens_pressed()

func _input(event):
	if (event is InputEventScreenTouch) && canHide:
		canHide = false
		$AnimationRedoTutorial.play("Hide")
		dialogo.percent_visible = 0
		$"/root/TutorialGlobal".lockCostura = false
		$"/root/TutorialGlobal".lockCozinha = false
		$"/root/TutorialGlobal".lockFrases = false

extends Control

onready var dialogo = get_node("Label0")
var cont = 0
var canHide
var isDialogoUp = false

func _ready():
	if (!$"/root/TutorialGlobal".willDoTutorial || ($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".FrasesCompleted && $"/root/TutorialGlobal".CosturaCompleted)):
		self.visible = true
	
	if ($"/root/TutorialGlobal".willDoTutorial && $"/root/TutorialGlobal".FrasesCompleted && !$"/root/Global".didntShow):
		ajudaShow()
		$"/root/Global".didntShow = true

func ajudaShow():
	if (!isDialogoUp):
		dialogo = $AvisoText
		$AnimationRedoTutorial.play("InDialogo")
		isDialogoUp = true

func _on_RedoTutorial_pressed():
	$"/root/TutorialGlobal".isRedoingTutorial = true
	
	
	if (!isDialogoUp):
		$AnimationRedoTutorial.play("InDialogo")
		isDialogoUp = true
		
		$"/root/TutorialGlobal".lockCostura = true
		$"/root/TutorialGlobal".lockCozinha = true
		$"/root/TutorialGlobal".lockFrases = true
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
		
		$"/root/TutorialGlobal".lockCostura = false
		$"/root/TutorialGlobal".lockCozinha = false
		$"/root/TutorialGlobal".lockFrases = false

func _on_PortaBuscaPalavras_pressed():
	if ($"/root/Global".contPalavrasEncontradas == 43):
		if ($"/root/TutorialGlobal".isRedoingTutorial):
			dialogo = $LockCompletedLetras
			$Label0.percent_visible = 0
			$LockBagFull.percent_visible = 0
			$LockNoLetraCostura.percent_visible = 0
			$LockNoBordadoCartoes.percent_visible = 0
			cont = 0
			$"/root/TutorialGlobal".isRedoingTutorial = false
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
			$LockBagFull.percent_visible = 0
			$LockCompletedLetras.percent_visible = 0
			cont = 0
			$"/root/TutorialGlobal".isRedoingTutorial = false
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
			$LockBagFull.percent_visible = 0
			$Label0.percent_visible = 0
			cont = 0
			$TimerRedo.start()
			$"/root/TutorialGlobal".isRedoingTutorial = false
	elif($"/root/Global".frases.size() == 12):
		if ($"/root/TutorialGlobal".isRedoingTutorial):
			dialogo = $LockBagFull
			$LockNoBordadoCartoes.percent_visible = 0
			$LockCompletedLetras.percent_visible = 0
			$LockNoLetraCostura.percent_visible = 0
			$Label0.percent_visible = 0
			cont = 0
			$TimerRedo.start()
			$"/root/TutorialGlobal".isRedoingTutorial = false
	elif (!$"/root/TutorialGlobal".willDoTutorial):
		$"/root/TutorialGlobal".lockCostura = false
		$"/root/TutorialGlobal".lockCozinha = false
		$"/root/TutorialGlobal".lockFrases = false
		get_parent()._on_PortaQuartoMontagens_pressed()
	
	print($"/root/Global".frases.size())

func _input(event):
	if (event is InputEventScreenTouch) && canHide:
		canHide = false
		if (isDialogoUp):
			$AnimationRedoTutorial.play("Hide")
			isDialogoUp = false
		dialogo.percent_visible = 0


func _on_SimC_pressed():
	ajudaShow()

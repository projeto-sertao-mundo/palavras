extends Node

var willDoTutorial

var lockCozinha
var lockCostura
var lockFrases
var tutorialPos

var CozinhaCompleted
var CosturaCompleted
var FrasesCompleted

var isRedoingTutorial

var alreadyAsked

func _init():
	tutorialPos = 0
	#willDoTutorial = false
	
	if (willDoTutorial):
		lockCozinha = true
		lockCostura = true
		lockFrases = true
	else:
		lockCozinha = false
		lockCostura = false
		lockFrases = false

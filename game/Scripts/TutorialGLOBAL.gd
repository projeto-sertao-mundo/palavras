extends Node

var willDoTutorial

var lockCozinha
var lockCostura
var lockFrases
var tutorialPos

var CozinhaCompleted
var CosturaCompleted
var FrasesCompleted

func _init():
	tutorialPos = 0
	willDoTutorial = true
	
	if (willDoTutorial):
		lockCozinha = true
		lockCostura = true
		lockFrases = true
	else:
		lockCozinha = false
		lockCostura = false
		lockFrases = false

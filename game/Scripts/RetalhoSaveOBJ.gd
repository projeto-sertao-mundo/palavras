class_name RetalhoToGlobal

var retalhoMioloTex
var retalhoBordaTex

var retalhoMioloColor
var retalhoBordaColor

var retalhoLabel

var posicaoRetalho

var sprite

func _init(var retalhoMioloTexRef, var retalhoBordaTexRef, var retalhoMioloColorRef, var retalhoBordaColorRef, var retalhoLabelRef, var posicaoRetalhoRef, var spriteRef):
	retalhoMioloTex = retalhoMioloTexRef
	retalhoBordaTex = retalhoBordaTexRef
	
	retalhoMioloColor = retalhoMioloColorRef
	retalhoBordaColor = retalhoBordaColorRef
	
	retalhoLabel = retalhoLabelRef
	
	posicaoRetalho = posicaoRetalhoRef
	
	sprite = spriteRef

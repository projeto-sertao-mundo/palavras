extends Node

var bolsa = []
var aux = -1
var palavra
var firstSceneNode
var podeSetar

func adicionarItemBosla(var palavra):
	var palavraNova = [palavra]
	bolsa += palavraNova

func retornarPalavras():
	return bolsa

extends Node

var bolsa = []
var aux = -1

func adicionarItemBosla(var palavra):
	var palavraNova = [palavra]
	bolsa += palavraNova
	
	#Mostrar palavras que existem na bag
	for palavraArray in bolsa:
		print(palavraArray)
	print("--")

func retornarPalavras():
	return bolsa

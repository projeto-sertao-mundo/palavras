extends Node

var bolsa = []
var bolsaLetra = []
var aux = -1
var palavra
var firstSceneNode
var podeSetar

func adicionarItemBolsaPalavra(var palavra):
	var palavraNova = [palavra]
	bolsa += palavraNova

func adicionarItemBolsaLetra(var letra):
	var letraNova = Letras.new()
	
	letraNova.sprite = letra.get_child(0).texture_normal
	letraNova.nome = letra.name
	#letraNova.cor = letraNovaRef.Color()
	
	var letraNovaVector = [letraNova]
	
	bolsaLetra += letraNovaVector

func retornarPalavras():
	return bolsa

func retornarLetras():
	return bolsaLetra


class Letras:
	var sprite
	var nome
	var cor

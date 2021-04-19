extends Node

var bolsa = []
var bolsaLetra = []
var aux = -1
var firstSceneNode
var podeSetar
var palavraInstanceRef
var letraInstanceRef

func adicionarItemBolsaPalavra(var palavraR):
	var palavraNova = [palavraR]
	bolsa += palavraNova

func adicionarItemBolsaLetra(var letra):
	var letraNova = Letras.new()
	
	letraNova.sprite = letra.get_child(0).texture_normal
	letraNova.nome = letra.name
	letraNova.cor = Color(letra.modulate.r, letra.modulate.g, letra.modulate.b)
	
	var letraNovaVector = [letraNova]
	
	bolsaLetra += letraNovaVector

func retornarPalavras():
	return bolsa

func retornarLetras():
	return bolsaLetra

func setarRefs(var palavras, var letras):
	palavraInstanceRef = palavras
	letraInstanceRef = letras

class Letras:
	var sprite
	var nome
	var cor

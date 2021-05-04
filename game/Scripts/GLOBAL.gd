extends Node

var bolsa = []
var bolsaLetra = []
var bolsaLetraAcentuada = []
var aux = -1
var firstSceneNode
var podeSetar
var palavraInstanceRef
var letraInstanceRef
var coresInstanceRef
var corArrastada

func mudarcorArrastada(var cor):
	corArrastada = cor

func returnCorArrastada():
	return corArrastada

func adicionarItemBolsaPalavra(var palavraR):
	var palavraNova = [palavraR]
	bolsa += palavraNova

func adicionarItemBolsaLetra(var letra):
	var letraNova = Letras.new()
	
	letraNova.sprite = letra.get_child(0).texture_normal
	letraNova.nome = letra.name
	#letraNova.cor = Color(letra.modulate.r, letra.modulate.g, letra.modulate.b)
	
	var letraNovaVector = [letraNova]
	
	bolsaLetra += letraNovaVector

func adicionarItemBolsaLetraAcentuada(var letra):
	var letraNova = Letras.new()
	
	letraNova.sprite = letra.get_child(0).texture_normal
	letraNova.nome = letra.name
	#letraNova.cor = Color(letra.modulate.r, letra.modulate.g, letra.modulate.b)
	
	var letraNovaVector = [letraNova]
	
	bolsaLetraAcentuada += letraNovaVector

func retornarPalavras():
	return bolsa

func retornarLetras():
	return bolsaLetra

func retornarLetrasAcentuadas():
	return bolsaLetraAcentuada

func setarRefs(var palavras, var letras, var cores):
	palavraInstanceRef = palavras
	letraInstanceRef = letras
	coresInstanceRef = cores

class Letras:
	var sprite
	var nome
	var cor

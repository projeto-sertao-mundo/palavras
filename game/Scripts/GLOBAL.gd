extends Node

var bolsa = []
var bolsaLetra = []
var bolsaLetraAcentuada = []
var retalhos = []

var aux = -1
var podeSetar

var firstSceneNode

var palavraInstanceRef
var letraInstanceRef
var coresInstanceRef
var retalhoInstanceRef

var corArrastada

var retalhoArrastado

var codigoRetalho = 0

func criarRetalho(var corBorda, corMiolo, spriteBorda, spriteMiolo, texto):
	codigoRetalho += 1
	var retalhoNovo = [Costura.new(corBorda, corMiolo, spriteBorda, spriteMiolo, texto, codigoRetalho)]
	retalhos += retalhoNovo

func retornarRetalhos():
	return retalhos

func mudarRetalhoArrastado (var retalho):
	retalhoArrastado = retalho

func returnRetalhoArrastado():
	return retalhoArrastado

func deleteRetalhoArrastado():
	for ret in retalhos:
		if str(ret.codigo) == retalhoArrastado.name:
			retalhos.erase(ret)

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

func setarRefs(var palavras, var letras, var cores, var retalhosRef):
	palavraInstanceRef = palavras
	letraInstanceRef = letras
	coresInstanceRef = cores
	retalhoInstanceRef = retalhosRef

class Letras:
	var sprite
	var nome
	var cor

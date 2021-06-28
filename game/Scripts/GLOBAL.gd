extends Node

var firstTime

var bolsa = []
var bolsaLetra = []
var bolsaLetraAcentuada = []
var retalhos = []
var frases = []

var aux = -1
var podeSetar
var firstSceneNode

var contPalavrasEncontradas = 0
var limite = 11
var morfemaInstanceRef
var letraInstanceRef
var coresInstanceRef
var retalhoInstanceRef
var retalhosFrasesRef
var cartoesInstanceRef
var selectedCard

var jaSetou
var corArrastada
var retalhoArrastado
var codigoRetalho = 0
var codigoCartao = 0
var cartaoEditando

func _init():
	contPalavrasEncontradas = 0
	limite = 11

func AdicionarPalavraEncontrada():
	if contPalavrasEncontradas == null:
		contPalavrasEncontradas = 1
	else:
		contPalavrasEncontradas += 1

func criarRetalho(var corBorda, corMiolo, spriteBorda, spriteMiolo, texto):
	codigoRetalho += 1
	var retalhoNovo = [Costura.new(corBorda, corMiolo, spriteBorda, spriteMiolo, texto, codigoRetalho)]
	retalhos += retalhoNovo

func retornarRetalhos():
	return retalhos

func retornarCartoes():
	return frases

func mudarRetalhoArrastado (var retalho):
	retalhoArrastado = retalho

func returnRetalhoArrastado():
	return retalhoArrastado

func deleteRetalhoArrastado():
	for ret in retalhos:
		if str(ret.codigo) == retalhoArrastado.name:
			retalhos.erase(ret)

func deleteCartaoSelecionado():
	for cartao in frases:
		if cartao.codigo == selectedCard:
			print(cartao.codigo)
			frases.erase(cartao)
	print(frases)
	
func mudarcorArrastada(var cor):
	corArrastada = cor

func criarFrase(var sprite, var retalhosRef):
	codigoCartao += 1
	var fraseNovo = [FraseOBJ.new(sprite, retalhosRef, codigoCartao)]
	frases += fraseNovo

#func editarFrase(var sprite, var retalhosRef):
#	for frase in frases:
#		if (frase.codigo == int(cartaoEditando)):
#			var fraseNovo = [FraseOBJ.new(sprite, retalhosRef, frase.codigo)]
#			frase = fraseNovo


func returnCorArrastada():
	return corArrastada

func adicionarItemBolsaPalavra(var palavraR):
	var palavraNova = [palavraR]
	bolsa += palavraNova
	print(bolsa.size())

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

func setarRefs(var morfemas, var letras, var cores, var retalhosRef, var retalhosFrases, var cartoesRef):
	morfemaInstanceRef = morfemas
	retalhosFrasesRef = retalhosFrases
	letraInstanceRef = letras
	coresInstanceRef = cores
	retalhoInstanceRef = retalhosRef
	cartoesInstanceRef = cartoesRef

class Letras:
	var sprite
	var nome
	var cor

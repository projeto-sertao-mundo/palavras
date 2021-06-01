extends Node

var bolsa = []
var bolsaLetra = []
var bolsaLetraAcentuada = []
var retalhos = []

var aux = -1
var podeSetar

var firstSceneNode

var morfemaInstanceRef
var letraInstanceRef
var coresInstanceRef
var retalhoInstanceRef

var jaSetou

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

func sortLetras():
	
	for i in bolsaLetra.size():
		
		var menorIndice = ord(bolsaLetra[i].nome)
		var menorLetra = bolsaLetra[i]
		var indiceMenorLetra = i
		
		
		for j in bolsaLetra.size() - 1:
			j = j + 1
			if (menorIndice > ord(bolsaLetra[j].nome)):
				menorIndice = ord(bolsaLetra[j].nome)
				menorLetra = bolsaLetra[j]
				indiceMenorLetra = j
#				print(true)
#			else:
#				print(menorIndice)
#				print(ord(bolsaLetra[j].nome))
		
		#print(indiceMenorLetra)
		
		var aux = bolsaLetra[i]
#		print(bolsaLetra[i].nome)
#		print(menorLetra.nome)
#		print("-")
		bolsaLetra[i] = menorLetra
		bolsaLetra[indiceMenorLetra] = aux
	
#	for k in bolsaLetra.size():
#		print(bolsaLetra[k].nome)
	
	#	var aux = []
#	var bolsaLetraAux = bolsaLetra
#
#	for i in bolsaLetra.size():
#		aux.append(ord(bolsaLetra[i].nome))
#
#	aux.sort()
#
#	print(bolsaLetra.size())
#	print(bolsaLetraAux.size())
#
#	for i in bolsaLetra.size():
#		for j in bolsaLetra.size():
#			if (char(aux[i]) == bolsaLetraAux[j].nome):
#				bolsaLetra[i] = bolsaLetraAux[j]
#				print("true")
#			else:
#				print("false")
	

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

func setarRefs(var morfemas, var letras, var cores, var retalhosRef):
	morfemaInstanceRef = morfemas
	letraInstanceRef = letras
	coresInstanceRef = cores
	retalhoInstanceRef = retalhosRef

class Letras:
	var sprite
	var nome
	var cor

class_name Costura

var codigo
var spriteBorda
var spriteMiolo
var corBorda
var corMiolo
var labelText

func _init(var corBordaRef, corMioloRef, spriteBordaRef, spriteMioloRef, labelRef, codigoRef):
	corBorda = corBordaRef
	corMiolo = corMioloRef
	spriteBorda = spriteBordaRef
	spriteMiolo = spriteMioloRef
	labelText = labelRef
	codigo = codigoRef

func getCorBorda():
	return corBorda
func getCorMiolo():
	return corMiolo
func getSpriteBorda():
	return spriteBorda
func getSpriteMiolo():
	return spriteMiolo
func getLabelText():
	return labelText

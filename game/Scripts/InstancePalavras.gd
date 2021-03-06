extends Control
var foiClicado = false
var retalhoInstanciado
var isShow = false


func _ready():
	InstanciarPalavras()

func InstanciarPalavras():
	if get_child(6).name == "Palavras":
		var bolsaPalavras = []
		bolsaPalavras = $"/root/Global".retornarPalavras()
		var gridPalavras = get_node("Palavras/GridContainer")
		
		for morfema in bolsaPalavras:
			gridPalavras.get_node(morfema).disabled = false
			gridPalavras.get_node(morfema).visible = true
			
		
	if get_child(6).name == "Letras":
		
		var bolsaLetrasAcentuadas = []
		var bolsaLetras = []
		bolsaLetras = $"/root/Global".retornarLetras()
		bolsaLetrasAcentuadas = $"/root/Global".retornarLetrasAcentuadas()
		
		for letra in bolsaLetras:
			var gridLetras = get_node("Letras/GridLetras")
			if (gridLetras.has_node(letra.nome)):
				gridLetras.get_node(letra.nome).disabled = false
				gridLetras.get_node(letra.nome).visible = true
		
		for letraAcentuada in bolsaLetrasAcentuadas:
			var gridLetrasAcentuadas = get_node("Letras/GridLetrasAcentuadas")
			if (gridLetrasAcentuadas.has_node(letraAcentuada.nome)):
				gridLetrasAcentuadas.get_node(letraAcentuada.nome).disabled = false
				gridLetrasAcentuadas.get_node(letraAcentuada.nome).visible = true
		
	elif get_child(6).name == "Retalhos":
		var retalhos = []
		retalhos = $"/root/Global".retornarRetalhos()
		for retalhoRef in retalhos:
			if !get_node("Retalhos").has_node("GridRetalhos/"+str(retalhoRef.codigo)):
				retalhoInstanciado = $"/root/Global".retalhoInstanceRef.instance()
				retalhoInstanciado.name = str(retalhoRef.codigo)
				retalhoInstanciado.get_node("Borda").modulate = retalhoRef.corBorda
				retalhoInstanciado.get_node("Miolo").modulate = retalhoRef.corMiolo
				retalhoInstanciado.get_node("Borda").texture = retalhoRef.spriteBorda
				retalhoInstanciado.get_node("Miolo").texture = retalhoRef.spriteMiolo
				retalhoInstanciado.get_node("Label").text = retalhoRef.labelText
				self.get_node("Retalhos").get_node("GridRetalhos").add_child(retalhoInstanciado)
				self.get_node("Retalhos").get_node("GridRetalhos").move_child(retalhoInstanciado,0)
		
	elif get_child(6).name == "Cart??es":
		var cartoes = []
		cartoes = $"/root/Global".retornarCartoes()
		for cartao in cartoes:
			if (!get_node("Cart??es").has_node("GridCart??es/"+str(cartao.codigo))):
				var cartaoInstanciado = $"/root/Global".cartoesInstanceRef.instance()
				cartaoInstanciado.name = str(cartao.codigo)
				cartaoInstanciado.get_node("Cartao").texture_normal = cartao.sprite
				self.get_node("Cart??es").get_node("GridCart??es").add_child(cartaoInstanciado)
				self.get_node("Cart??es").get_node("GridCart??es").move_child(cartaoInstanciado,0)
				
				for retalho in cartao.retalhos:
					retalhoInstanciado = $"/root/Global".retalhoInstanceRef.instance()
					cartaoInstanciado.add_child(retalhoInstanciado)
					cartaoInstanciado.move_child(retalhoInstanciado, 1)
					retalhoInstanciado.set_scale(Vector2(0.6,0.6))
					
					retalhoInstanciado.get_node("Borda").modulate = retalho.retalhoBordaColor
					retalhoInstanciado.get_node("Miolo").modulate = retalho.retalhoMioloColor
					retalhoInstanciado.get_node("Borda").texture = retalho.retalhoBordaTex
					retalhoInstanciado.get_node("Miolo").texture = retalho.retalhoMioloTex
					retalhoInstanciado.get_node("Label").text = retalho.retalhoLabel
					retalhoInstanciado.set_position(Vector2(retalho.posicaoRetalho.x + 158.5, retalho.posicaoRetalho.y + 97))

func _on_Bolsa_pressed():
	if (!isShow):
		if ($"/root/TutorialGlobal".tutorialPos == 6 || $"/root/TutorialGlobal".CozinhaCompleted || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial)):
			get_parent().get_node("BolsaJuice").play("BolsaIn")
			if ($"/root/TutorialGlobal".tutorialPos ==  6):
				get_parent().get_node("Tutorial2").Tutorial7()
			InstanciarPalavras()
			isShow = true

func _on_ButtonPalavras_pressed():
	if ($"/root/TutorialGlobal".tutorialPos == 8 || $"/root/TutorialGlobal".tutorialPos == 14 || $"/root/TutorialGlobal".CozinhaCompleted || $"/root/TutorialGlobal".CosturaCompleted || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial)):
		move_child(get_node("Palavras"), 6)
		InstanciarPalavras()
		if (has_node("Retalhos/GridRetalhos")):
			get_node("Retalhos/GridRetalhos").hide()
		if (has_node("Letras/GridLetras")):
			get_node("Letras/GridLetras").hide()
		if (has_node("Letras/GridLetrasAcentuadas")):
			get_node("Letras/GridLetrasAcentuadas").hide()
		if (has_node("Cart??es/GridCart??es")):
			get_node("Cart??es/GridCart??es").hide()
		
		if ($"/root/TutorialGlobal".tutorialPos == 8):
			get_parent().get_node("Tutorial2").Tutorial9()

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)
	InstanciarPalavras()
	if (has_node("Retalhos/GridRetalhos")):
		get_node("Retalhos/GridRetalhos").hide()
	if (has_node("Letras/GridLetras")):
		get_node("Letras/GridLetras").show()
	if (has_node("Letras/GridLetrasAcentuadas")):
		get_node("Letras/GridLetrasAcentuadas").show()
	if (has_node("Cart??es/GridCart??es")):
		get_node("Cart??es/GridCart??es").hide()

func _on_ButtonRetalhos_pressed():
	if ((!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".tutorialPos == 19 || ($"/root/TutorialGlobal".FrasesCompleted && get_tree().get_current_scene().name == "QuartoFrases") || ($"/root/TutorialGlobal".CosturaCompleted && get_tree().get_current_scene().name == "QuartoCostura")):
		move_child(get_node("Retalhos"), 6)
		InstanciarPalavras()
		
		if (has_node("Retalhos/GridRetalhos")):
			get_node("Retalhos/GridRetalhos").show()
		if (has_node("Letras/GridLetras")):
			get_node("Letras/GridLetras").hide()
		if (has_node("Letras/GridLetrasAcentuadas")):
			get_node("Letras/GridLetrasAcentuadas").hide()
		if (has_node("Cart??es/GridCart??es")):
			get_node("Cart??es/GridCart??es").hide()

func _on_Voltar_pressed():
	if ((!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".tutorialPos > 10):
		get_parent().get_node("BolsaJuice").play("BolsaOut")
		isShow = false
		get_parent().bolsaAberta = false

func _on_ButtonCartoes_pressed():
	if ($"/root/TutorialGlobal".tutorialPos == 25 && ($"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".isRedoingTutorial)):
		get_parent().get_node("Tutorial4").Tutorial26()
	
	if ($"/root/TutorialGlobal".tutorialPos == 25 || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".FrasesCompleted):
		move_child(get_node("Cart??es"), 6)
		InstanciarPalavras()
		
		get_node("Cart??es/GridCart??es").show()
		
		if (has_node("Letras/GridLetras")):
			get_node("Letras/GridLetras").hide()
		if (has_node("Letras/GridLetrasAcentuadas")):
			get_node("Letras/GridLetrasAcentuadas").hide()
		if (has_node("Retalhos/GridRetalhos")):
			get_node("Retalhos/GridRetalhos").hide()

func _on_Descartar2_pressed():
	InstanciarPalavras()
func _on_Descart_pressed():
	InstanciarPalavras()


func _on_VoltarAll_pressed():
	if (get_parent().bolsaAberta):
		_on_Voltar_pressed()

extends Sprite

var setado = false
var corAnterior = Color(0.882353, 0.882353, 0.819608)

func _process(_delta):
	var cor = $"/root/Global".returnCorArrastada()
	
	if is_pixel_opaque(get_local_mouse_position()) && cor != null:
		var corAux = Color(0.882353, 0.882353, 0.819608)
		if cor.name == "Verde":
			MudarCor(0.007843, 0.505882, 0)
			corAux = Color(0.007843, 0.505882, 0)
		elif cor.name == "Vermelho":
			MudarCor(0.635294, 0.152941, 0.07451)
			corAux = Color(0.635294, 0.152941, 0.07451)
		elif cor.name == "Azul":
			MudarCor(0.294118, 0.439216, 0.580392)
			corAux = Color(0.294118, 0.439216, 0.580392)
		elif cor.name == "Amarelo":
			MudarCor(0.811765, 0.588235, 0.062745)
			corAux = Color(0.811765, 0.588235, 0.062745)
		elif cor.name == "Roxo":
			MudarCor(0.513726, 0.45098, 0.552941)
			corAux = Color(0.513726, 0.45098, 0.552941)
		elif cor.name == "Branco":
			MudarCor(0.882353, 0.882353, 0.819608)
			corAux = Color(0.882353, 0.882353, 0.819608)
		
		if !Input.is_action_pressed("Click"):
			setado = true
			cor.free()
			corAnterior = Color(corAux)
		else:
			setado = false
		
	
	if !setado && !Input.is_action_pressed("Click") || !is_pixel_opaque(get_local_mouse_position()) && setado == false:
		self.modulate = corAnterior


func MudarCor(var r, g, b):
	self.modulate = Color(r,g,b)

func _on_Recomecar_pressed():
	corAnterior = Color(0.882353, 0.882353, 0.819608)

func _on_Costurar_pressed():
	corAnterior = Color(0.882353, 0.882353, 0.819608)

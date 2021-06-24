extends Sprite

var setado = false
var corAnterior = Color(0.882353, 0.882353, 0.819608)
var corAux

func _ready():
	corAux = Color(0.882353, 0.882353, 0.819608)

func _process(_delta):
	if ($"/root/TutorialGlobal".tutorialPos == 16 || $"/root/TutorialGlobal".CosturaCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		var cor = $"/root/Global".returnCorArrastada()
		
		if is_pixel_opaque(get_local_mouse_position()) && cor != null:
			if cor.name == "Verde":
				MudarCor(0.364706, 0.529412, 0.372549)
				corAux = Color(0.364706, 0.529412, 0.372549)
			elif cor.name == "Vermelho":
				MudarCor(0.584314, 0.219608, 0.160784)
				corAux = Color(0.584314, 0.219608, 0.160784)
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
				MudarCor(0.768627, 0.74902, 0.698039)
				corAux = Color(0.768627, 0.74902, 0.698039)
			if !Input.is_action_pressed("Click"):
				setado = true
				cor.free()
				corAnterior = Color(corAux)
				self.get_parent().get_parent().get_parent().get_node("Tutorial3").ChangeSetedColor()
			else:
				setado = false
				#corAnterior = Color(0.768627, 0.74902, 0.698039)
		
		if !is_pixel_opaque(get_local_mouse_position()) && !setado:
			self.modulate = corAnterior


func MudarCor(var r, g, b):
	self.modulate = Color(r,g,b)

func on_Costurar_pressed():
	MudarCor(0.768627, 0.74902, 0.698039)
	corAux = Color(0.768627, 0.74902, 0.698039)
	corAnterior = Color(0.768627, 0.74902, 0.698039)

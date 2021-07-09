extends TextureButton

func ScaleButton(var tamanhoX = 0.15, var tamanhoY = 0.15):
	set_scale(self.get_scale() + Vector2(tamanhoX,tamanhoY))

func UnScaleButton(var tamanhoX = 0.15, var tamanhoY = 0.15):
	set_scale(self.get_scale() - Vector2(tamanhoX,tamanhoY))


func _on_Sim_mouse_entered():
	ScaleButton()
func _on_Sim_mouse_exited():
	UnScaleButton()

func _on_Nao_mouse_exited():
	UnScaleButton()
func _on_Nao_mouse_entered():
	ScaleButton()

func _on_SimC_mouse_entered():
	ScaleButton()
func _on_SimC_mouse_exited():
	UnScaleButton()

func _on_NaoC_mouse_entered():
	ScaleButton()
func _on_NaoC_mouse_exited():
	UnScaleButton()

func _on_VoltarMenu_mouse_entered():
	ScaleButton()
func _on_VoltarMenu_mouse_exited():
	UnScaleButton()

func _on_Bolsa_mouse_entered():
	ScaleButton(0.08, 0.08)
func _on_Bolsa_mouse_exited():
	UnScaleButton(0.08, 0.08)

func _on_Voltar_mouse_exited():
	UnScaleButton()
func _on_Voltar_mouse_entered():
	ScaleButton()

func _on_Voltar2_mouse_entered():
	ScaleButton()
func _on_Voltar2_mouse_exited():
	UnScaleButton()

func _on_Costurar_mouse_entered():
	ScaleButton()
func _on_Costurar_mouse_exited():
	UnScaleButton()

func _on_Recomecar_mouse_entered():
	ScaleButton()
func _on_Recomecar_mouse_exited():
	UnScaleButton()

func _on_PaginaRetalho_mouse_entered():
	ScaleButton()
func _on_PaginaRetalho_mouse_exited():
	UnScaleButton()

func _on_Confirm_mouse_entered():
	ScaleButton()
func _on_Confirm_mouse_exited():
	UnScaleButton()

func _on_Descartar_mouse_entered():
	ScaleButton()
func _on_Descartar_mouse_exited():
	UnScaleButton()

func _on_NaoDescartar_mouse_entered():
	ScaleButton()
func _on_NaoDescartar_mouse_exited():
	UnScaleButton()

func _on_Descart_mouse_entered():
	ScaleButton()
func _on_Descart_mouse_exited():
	UnScaleButton()
func _on_Confirm_pressed():
	if (get_parent().get_node("RetalhoGrande").get_child_count() < 12):
		UnScaleButton()

func _on_Descart_pressed():
	UnScaleButton()
func _on_NaoDescartar_pressed():
	UnScaleButton()


func _on_Maquina_mouse_entered():
	ScaleButton()
func _on_Maquina_mouse_exited():
	UnScaleButton()

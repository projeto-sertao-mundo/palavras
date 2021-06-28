extends TextureButton

func ScaleButton():
	set_scale(self.get_scale() + Vector2(0.15,0.15))

func UnScaleButton():
	set_scale(self.get_scale() - Vector2(0.15,0.15))


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
	ScaleButton()
func _on_Bolsa_mouse_exited():
	UnScaleButton()

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

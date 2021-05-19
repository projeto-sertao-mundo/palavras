extends Sprite

var mouseIn = false

func _ready():
	set_process(false)

func _process(_delta):
	if mouseIn && $"/root/Global".returnRetalhoArrastado() != null && !Input.is_action_pressed("Click"):
		print ("KEKO")
		$"/root/Global".deleteRetalhoArrastado()
		
		var costuraPopUpNode = get_parent().get_node("CosturaPopUp/PalavrasPopUp")
		var grid = costuraPopUpNode.get_node("Retalhos").get_node("GridRetalhos").get_children()
		
		for n in grid:
			n.free()
		
		instanceRetalhos()


func instanceRetalhos():
	var retalhos = []
	retalhos = $"/root/Global".retornarRetalhos()
	var costuraPopUpNode = get_parent().get_node("CosturaPopUp/PalavrasPopUp")
	for retalhoRef in retalhos:
		if !costuraPopUpNode.get_node("Retalhos").has_node("GridRetalhos/"+str(retalhoRef.codigo)):
			var retalhoInstanciado = $"/root/Global".retalhoInstanceRef.instance()
			retalhoInstanciado.name = str(retalhoRef.codigo)
			retalhoInstanciado.get_node("Borda").modulate = retalhoRef.corBorda
			retalhoInstanciado.get_node("Miolo").modulate = retalhoRef.corMiolo
			retalhoInstanciado.get_node("Borda").texture = retalhoRef.spriteBorda
			retalhoInstanciado.get_node("Miolo").texture = retalhoRef.spriteMiolo
			retalhoInstanciado.get_node("Label").text = retalhoRef.labelText
			costuraPopUpNode.get_node("Retalhos").get_node("GridRetalhos").add_child(retalhoInstanciado)
	

func _on_Area2D_area_entered(_area):
	mouseIn = true
	set_process(true)
func _on_Area2D_area_exited(_area):
	mouseIn = false
	set_process(false)

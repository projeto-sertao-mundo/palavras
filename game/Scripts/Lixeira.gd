extends Sprite

var mouseIn = false
var costuraPopUpNode
var clickPosition
var area

func _ready():
	costuraPopUpNode = get_parent().get_node("CosturaPopUp/PalavrasPopUp")

func _process(_delta):
	if mouseIn && $"/root/Global".returnRetalhoArrastado() != null:
		var grid = costuraPopUpNode.get_node("Retalhos").get_node("GridRetalhos").get_children()
		$"/root/Global".deleteRetalhoArrastado()
		
		print ("titi")
		
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
			
	
	area.free()
	

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position

func _on_Area2D_area_entered(_area):
	mouseIn = true
	area = _area.get_parent()

func _on_Area2D_area_exited(_area):
	mouseIn = false

extends Sprite

var mouseIn = false
var costuraPopUpNode
var clickPosition
var areaR

func _ready():
	costuraPopUpNode = get_parent().get_node("CosturaPopUp/PalavrasPopUp")

func _process(_delta):
	#print(mouseIn , " ", $"/root/Global".returnRetalhoArrastado())
	if mouseIn && areaR != null:
		var grid = costuraPopUpNode.get_node("Retalhos").get_node("GridRetalhos").get_children()
		#print(areaR.name)
		$"/root/Global".deleteRetalhoArrastado(areaR)
		
		for n in grid:
			n.free()
		
		instanceRetalhos()


func instanceRetalhos():
	var retalhos = []
	retalhos = $"/root/Global".retornarRetalhos()
	costuraPopUpNode = get_parent().get_node("CosturaPopUp/PalavrasPopUp")
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
			
	if (areaR != null):
		areaR.free()

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position

func _on_Area2D_area_entered(area):
	mouseIn = true
	areaR = area.get_parent()

func _on_Area2D_area_exited(_area):
	mouseIn = false

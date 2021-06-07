extends Label

var clickPosition
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta):
	if (clickPosition != null):
		self.text = str(clickPosition)

func _input(event):
#	if event is InputEventScreenDrag:
#		clickPosition = event.position
#		#print(clickPosition)
	pass


func _on_TextureButton_button_up():
	self.text = "false"
	print("false")
func _on_TextureButton_button_down():
	self.text = "true"
	print("true")

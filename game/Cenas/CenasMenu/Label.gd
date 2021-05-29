extends Label

var clickPosition = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta):
	if (clickPosition != null):
		self.text = str(clickPosition)

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position
		#print(clickPosition)

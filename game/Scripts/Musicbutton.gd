extends TextureButton

var muted
var volume = -10

func _ready():
	if ($"/root/TrilhaSonora".get_node("Music").volume_db == -80):
		muted = true
		self.modulate = Color(0.435294, 0.435294, 0.435294)

func _on_MusicButton_pressed():
	if (!muted):
		$"/root/TrilhaSonora".get_node("Music").volume_db = -80
		self.modulate = Color(0.435294, 0.435294, 0.435294)
		muted = true
	else:
		$"/root/TrilhaSonora".get_node("Music").volume_db = volume
		self.modulate = Color(1, 1, 1)
		muted = false


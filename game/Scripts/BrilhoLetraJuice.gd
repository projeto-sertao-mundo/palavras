extends Node2D

func _ready():
	$AnimationPlayer.play("Start")

func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "Start"):
		$AnimationPlayer.play("Idle")
	elif (anim_name == "End"):
		self.queue_free()



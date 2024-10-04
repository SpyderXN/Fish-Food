extends CanvasLayer


func change_scene(target: String) -> void:
	$AnimationPlayer.play("close")
	$TransitionSound.play()
	await  $AnimationPlayer.animation_finished
	$TransitionSound.play()
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("close")

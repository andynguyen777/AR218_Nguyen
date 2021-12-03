extends Area2D

signal coin_collected 

	
func _on_AnimationPlayer_animation_finished(anim_name): 

	if anim_name == "Bounce": 
		
		queue_free()
		
	pass # Replace with function body.




func _on_Collectable_body_entered(body):  
	Global.score = Global.score + 1
	emit_signal("coin_collected") 
	$AnimationPlayer.play("Bounce")

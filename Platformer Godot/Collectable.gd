extends Area2D


func _on_Collectable_area_entered(area):

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
	$AnimationPlayer.play("Bounce")
	
func _on_AnimationPlayer_animation_finished(anim_name): 
# Called when the node enters the scene tree for the first time.

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	if anim_name == "Bounce": 
		
		queue_free()
		
	pass # Replace with function body.

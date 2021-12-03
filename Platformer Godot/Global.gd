extends Node

var score = 0
func _on_Collectable_area_entered(area):

	
	
	$AnimationPlayer.play("Bounce")
	
	Global.score + Global.score + 1 

	
	

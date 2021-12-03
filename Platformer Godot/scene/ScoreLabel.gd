extends Area2D


signal coin_collected 

func _on_Collectable_body_entered(body):  
	Gloabl.score = Global.score + 1
	emit_signal("coin_collected") 


func _on():
	pass # Replace with function body.


func _on_ScoreLabel_coin_collected():
	pass # Replace with function body.

extends Label

var my_string=" ITEMS COLLECTED"
func _on_Collectable_coin_collected():
	text=String(Global.score)+my_string

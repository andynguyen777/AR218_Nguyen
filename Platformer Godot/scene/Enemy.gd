extends KinematicBody2D

var velocity = Vector2()

export var speed = 50 

const GRAVITY :=35 

export var direction = 1

export var can_fall = false 

func _ready(): 
	if direction == -1:
		$AnimatedSprite.flip_h() 
		$ground_check.position.x = $ground_checker.position.x *-1 
		
func _process(delta): 
		
		
	if not $Fade_Timer.is_stopped():
		modulate.a = modulate.a * $Fade_timer. time_left
		
	if is_on_wall(): 
		flip_enemy()
		
		
	if not can_fall: 
		
		
		$ground_check.enabled = false 
		
		if not $ground_check.is_colliding and is_on_floor(): 
		
			flip_enemy()
func flip_enemy():
	direction = direction * -1 
	$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h 
	$ground_check.position.x + $groundchecker.position.x *-1 
	
	
func _on_Area2D_body_entered(body):
	pass # Replace with function body. 
func _on_player_checker_body_entered(body): 
	if body.name == "Player": 
		body.energy = body.energy - 1 
		print(body.energy) 
		if body.energy <=0: 
			get_tree().change_scene("red://Scene/Level1.tscn") 
		
		$Fade_Timer.start()
		
		$AnimatedSprite.playing = false 
		
		
		set_collision_layer_bit(5,false) 
		set_collision_mask_bit(0, false)
		$player_checker.set_collision_layer_bit(5, false) 
		$player_checker.set_collision_mask_bit(0, false)
		
		
		speed = 0 

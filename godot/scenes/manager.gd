extends Sprite2D

var SPEED = 250.0

var move_in = false
var move_out = false

func enter() -> void:
	print("Manger enter")
	move_in = true
	move_out = false
	$"../ClickableItem".clicked = true
	
func exit() -> void:
	move_in = false
	move_out = true
	
func _process(delta: float) -> void:	
	if move_in:
		position.x += SPEED * delta;
		
	if move_out:
		position.x -= SPEED * delta;
		
	if position.x > 600:
		move_in = false
	if position.x < -100:
		move_out = false
		$"../ClickableItem".clicked = false

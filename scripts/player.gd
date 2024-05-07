extends Area2D

@onready var laser_prefab = preload("res://prefabs/laser.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_down") and position.y < 600:
		position.y += 10
	if Input.is_action_pressed("player_up") and position.y > 50:
		position.y -= 10
	if Input.is_action_pressed("player_right") and position.x < 400:
		position.x += 10
	if Input.is_action_pressed("player_left") and position.x > 50:
		position.x -= 10
	if Input.is_action_just_pressed("player_shoot"):
		var laser = laser_prefab.instantiate()
		laser.position = position
		get_parent().add_child(laser)

extends Node2D

@onready var enemy_prefab = preload("res://prefabs/enemy.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_timer_timeout():
	var enemy = enemy_prefab.instantiate()
	var random_y = randi_range(30,610)
	enemy.position = Vector2(1200,random_y)
	add_child(enemy)

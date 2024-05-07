extends Area2D

@export var speed = 2
@export var explosion_prefab = preload("res://prefabs/explosion.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed


func _on_area_entered(area):
	if area is laser:
		var explosion = explosion_prefab.instantiate()
		explosion.position = position
		get_parent().add_child(explosion)
		explosion.get_node("GPUParticles2D").emitting = true
		queue_free()
		area.queue_free()

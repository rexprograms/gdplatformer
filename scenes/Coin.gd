extends Node2D

export var value=1

signal coin_picked_up(value)

func _on_CollisionArea_area_entered(area):
	disable_pickup()
	$AnimationPlayer.play("Pickup")
	emit_signal("coin_picked_up", value)
	call_deferred("disable_pickup")
	
func disable_pickup():
	$CollisionArea/Shape.disabled = true

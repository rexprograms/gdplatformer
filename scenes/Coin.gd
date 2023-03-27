extends Node2D

export var value=1

signal coin_picked_up(value)

func _on_CollisionArea_area_entered(area):
	$CollisionArea/Shape.disabled = true
	$AnimationPlayer.play("Pickup")
	emit_signal("coin_picked_up", value)

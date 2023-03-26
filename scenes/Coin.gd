extends Area2D

export var value=1

signal coin_picked_up(value)


func _on_Coin_area_entered(area):
	print("coin picked up")
	if visible:
		hide()
		$RespawnTimer.start()
		emit_signal("coin_picked_up", value)


func _on_RespawnTimer_timeout():
	show()

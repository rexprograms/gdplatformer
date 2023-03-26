extends Node2D

var coins = 0

func ready():
	update_coins()

func _on_Coin_coin_picked_up(value):
	print("coin")
	coins+=value
	update_coins()
	
func update_coins():
	$HUD/Coins.text = "%d" % coins

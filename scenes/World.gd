extends Node2D

var coins = 0

func ready():
	update_coins()

func _on_Coin_coin_picked_up(value):
	coins+=value
	update_coins()
	
func update_coins():
	$HUD/CoinLabel.text = "%d" % coins

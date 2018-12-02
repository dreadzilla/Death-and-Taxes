/// @description Run text and then restart

oPlayerStats.coins = 0; // Reset the score

with (instance_create_layer(room_width/2,room_height/2,layer,oText))
{
		oPlayer.state = player.noop; // Stand still
}

buffer_seek(CLIENT_DATA_BUFFER, buffer_seek_start, 0)
/*
	List how many actions are being taken by the player (int)
	List actions in order
	Send packet to server
	
	Do this by getting all the actions into a buffer then buffer count?
	
	
*/

if (keyboard_check(vk_right)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_RIGHT)
}

if (keyboard_check(vk_left)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_LEFT)
}

if (keyboard_check(vk_up)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_JUMP)
}

if (keyboard_check(vk_down)) {
	ds_queue_enqueue(CLIENT_DATA_QUEUE,	multiAction.C_DUCK)
}





network_send_packet(client, CLIENT_DATA_BUFFER, buffer_tell(CLIENT_DATA_BUFFER))
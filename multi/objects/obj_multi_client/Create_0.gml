client = network_create_socket(network_socket_tcp);
network_connect(client, global.ip,global.port);


allsprites = ds_list_create()


CLIENT_DATA_BUFFER = buffer_create(256, buffer_grow, 1)
CLIENT_DATA_QUEUE = ds_queue_create()

oldM_x = mouse_x
oldM_y = mouse_y

debugData = ""

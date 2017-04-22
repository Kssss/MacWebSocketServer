function WebSocketTest2()
{
	if ("WebSocket" in window)
	{
		var ws = new WebSocket("%%WEBSOCKET_URL%%");
		ws.onopen = function()
		{
			// Web Socket is connected
			alert("websocket is open");
			
			// You can send data now
			ws.send("websocketClient send to server");
            ws.send("---------");

		};
		ws.onmessage = function(evt) {
            alert("111Client received: " + evt.data);
            console.log("Connection onMessage...");
        };
		ws.onclose = function() { alert("websocket is closed"); };
	}
	else
	{
		alert("Browser doesn't support WebSocket!");
	}
}

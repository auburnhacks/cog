test:
	python -m pytest tests/

PORT = 8000
HOST = localhost
run:
	gunicorn --bind $(HOST):$(PORT) -k geventwebsocket.gunicorn.workers.GeventWebSocketWorker hardwarecheckout:app 


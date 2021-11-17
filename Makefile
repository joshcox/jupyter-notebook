build:
	docker build --rm -t jupyter/notebook .

start:
	docker run --rm \
		-e JUPYTER_ENABLE_LAB=yes \
		-p 10000:8888 \
		-v "${PWD}/notes":/home/jovyan/notes \
		jupyter/notebook \
		start.sh jupyter lab --LabApp.token=''

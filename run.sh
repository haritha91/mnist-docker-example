# build docker image
docker build -f Dockerfile --rm -t docker_mnist .

#run on local with docker
docker run --gpus all \
--shm-size=8g -it \
--ipc="host" \
--volume=<data_mount_point_on_local_machine>:/app/data \
--volume=<results_mount_point_on_local_machine>:/app/results \
--rm docker_mnist python3 /app/main.py

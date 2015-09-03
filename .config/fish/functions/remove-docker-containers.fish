function remove-docker-containers
	docker rm (docker ps -a -q)
end

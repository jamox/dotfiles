function remove-docker-images
	docker rmi (docker images -q)
end

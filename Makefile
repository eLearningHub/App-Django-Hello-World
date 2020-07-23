build:
	docker build -t dde -f Dockerfile.dev .

run:
	docker run --name project-dev -p 8000:8000 -it -v `pwd`:/app dde 

clean:
	docker rm project-dev
# User-defined variables
DOCKER_USER		:= alexenge
IMAGE_VERSION	:= latest

# Automatic workflow variables
PROJECT_DIR		:= $(CURDIR)
PROJECT_NAME	:= $(notdir $(CURDIR))
IMAGE_TAG 		:= $(DOCKER_USER)/$(PROJECT_NAME)
REMOTE_DIR		:= /home/rstudio/project
SHELL			:= bash

# If DOCKER=TRUE, do stuff inside the Docker container
ifeq ($(DOCKER), TRUE)
	run := docker run --rm --volume $(PROJECT_DIR):$(REMOTE_DIR) $(IMAGE_TAG)
endif

# Knit the slides
slides: slides/slides.pdf
slides/slides.pdf:
	$(run) Rscript -e "rmarkdown::render(input = 'slides/slides.Rmd')"

# Knit the exercises
exercises: exercises/exercises.md
exercises/exercises.md:
	$(run) Rscript -e "rmarkdown::render(input = 'exercises/exercises.Rmd')"

# Run an interactive RStudio session with Docker
interactive:
	docker run --rm --volume $(PROJECT_DIR):$(REMOTE_DIR) \
	-e PASSWORD=1234 -p 8888:8888 $(IMAGE_TAG)

# Build the container with Docker
build: Dockerfile
	docker build --no-cache --progress plain --tag $(IMAGE_TAG) .

# Push the container with Docker
push:
	docker push $(IMAGE_TAG)

# Pull the container with Docker
pull:
	docker pull $(IMAGE_TAG)

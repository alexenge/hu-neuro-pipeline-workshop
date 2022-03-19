# User-defined variables
DOCKER_USER		:= alexenge
IMAGE_VERSION	:= latest

# Automatic workflow variables
PROJ_DIR		:= $(CURDIR)
PROJ_NAME		:= $(notdir $(CURDIR))
IMAGE_TAG 		:= $(DOCKER_USER)/$(PROJ_NAME)
REMOTE_DIR		:= /home/rstudio/proj
SHELL			:= bash

# If DOCKER=TRUE, do stuff inside the Docker container
ifeq ($(DOCKER), TRUE)
	run := docker run --rm --volume $(PROJ_DIR):$(REMOTE_DIR) $(IMAGE_TAG)
endif

# Main target: Knit the slides
all: slides/slides.pdf
slides/slides.pdf:
	$(run) Rscript -e "rmarkdown::render(input = 'slides/slides.Rmd')"

# Run an interactive RStudio session with Docker
interactive:
	docker run --rm --volume $(PROJ_DIR):$(REMOTE_DIR) \
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

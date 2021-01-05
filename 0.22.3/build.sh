#!/bin/bash

IMAGE=singularity-bismark-0.22.3.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION

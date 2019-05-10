#!/bin/bash

# Add firewall rule
gcloud beta compute firewall-rules create allow-jupyter \
    --allow tcp:8787 \
	--target-tags jupyter-server

# Create instance
gcloud compute instances create jupyter \
   --boot-disk-type=pd-ssd \
   --boot-disk-size=50GB \
   --image-family ubuntu-1604-lts \
   --image-project ubuntu-os-cloud \
   --machine-type n1-highmem-8 \
   --zone asia-east1-b \
   --preemptible

# Add tag to instance
gcloud compute instances add-tags jupyter --tags jupyter-server

# Setup server
while true
do
  if gcloud compute --verbosity error ssh teo@jupyter -- "echo instance now up" -o StrictHostKeyChecking=no; then
      echo "Server ready!"
	  break
  else
      echo "Waiting server to become available"
  fi
done

gcloud compute scp setup_docker_and_jupyter.sh jupyter:/home/teo/
gcloud compute ssh teo@jupyter --command 'sh ./setup_docker_and_jupyter.sh'

# Run jupyter
gcloud compute ssh teo@jupyter \
  --ssh-flag="-L 8787:0.0.0.0:8787" \
    --command \
    "sudo /home/teo/miniconda/bin/jupyter notebook --allow-root  --notebook-dir=/home/teo/ --port=8787 --no-browser"



#!/bin/bash
gcloud compute instances delete \
  --quiet \
  --zone asia-east1-b \
  jupyter


# Climacell devops exercise submission

This folder contains my submission of Climacell's devops exercise.

## The task:
Create a CI pipeline for the included repo of a simple node.js app using any CI tool and GCR

## Submission:
The following files were added to the original repo:

| Filename | Description |
| ------ | ------ |
| [Dockerfile](Dockerfile) | The Docker configuration file for the node.js app |
| [.travis.yml](.travis.yml) | The Travis CI pipeline configuration file |
| [travis/build.sh](travis/build.sh) | Docker build script for the Travis CI pipeline |
| [travis/test.sh](travis/test.sh) | Docker test script for the Travis CI pipeline, checks the app health URL from outside the container |
| [travis/push.sh](travis/push.sh) | Docker registry push script for the Travis CI pipeline, using gcr.io |
| [SUBMISSION.md](SUBMISSION.md) | This documentation file |


## Prerequisites and assumptions
  - The repo is hosted on github.com
  - The repo is defined and enabled on travis-ci.org 
  - A Google Cloud Platform account is available for storing the built containers on it's container registry
  - A service account key is generated on GCP, encoded (nowrap) to base64 and configured as env variable GCLOUD_SERVICE_KEY on the Travis repo 
  
## Checking the exercise:
The exercise is deployed on github.com, travis-ci.org and GCP, credentials will be provided separately.

You may also clone/copy this repo and deploy to your own compatible infrastructures as long as the above prerequisites are met and changes are updated in the env variables section of [.travis.yml](.travis.yml)

To trigger a new build, make a change to this repo. 
Note that build/test are performed for any branch, yet push to gcr is performed from the master branch only

To see Travis repo, browse to [https://travis-ci.org/The-black/climacell](https://travis-ci.org/The-black/climacell)

To see the gcr registry, browse to [https://console.cloud.google.com/gcr/images/kube-225910/GLOBAL/climacell.node?project=kube-225910&gcrImageListsize=30](https://console.cloud.google.com/gcr/images/kube-225910/GLOBAL/climacell.node?project=kube-225910&gcrImageListsize=30)

Feel free to add notifications to the Travis configuration (at [.travis.yml](.travis.yml)), but please do not remove my notifications to nadav@peer.org.il

 

Enjoy :)

  Nadav.

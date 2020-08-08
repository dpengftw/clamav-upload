# clamav-upload
Uploads clam definitions to a given repository on a daily basis

## Quick Start

```bash
docker run -it -e dest_url=<repository url> -e username=<user id> -e password=<api key> jedioncrk/clamavupload:latest
```

## Build Docker Image

Pull the repository and build the Docker image.

```bash
git pull https://github.com/jedioncrk/clamav-upload.git

docker build -t clamavupload .
```

## Environment variables

| Name | Description | 
|-----|-------|
| dest_url | Entire URL of repository where definition files are uploaded |
| username | Username to auth to repository |
| password | Password for said user |


## Store sensitive data in environment file

While still not ideal, but slighty better than specifying plaintext passwords, here is a way to specify those variables in a file

```bash
cat envs.list
dest_url=<repository url>
username=<user id>
passowrd=<api key>

docker run -it --env-file <envs.list> jedioncrk/clamavupload:latest
```
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


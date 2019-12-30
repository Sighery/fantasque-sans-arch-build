docker build -t sighery/fantasque-archbuilder .
docker create --name builder sighery/fantasque-archbuilder
docker cp builder:/builds/output "$(pwd)"
docker rm -f builder

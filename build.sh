for i in  $(find . -type f -name Dockerfile); do
    pushd $(dirname $i)
    docker-compose build
    docker-compose push
    popd
done

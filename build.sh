for i in  $(find . -type f -name Dockerfile); do
    pushd $(dirname $i)
    docker-compose build --no-cache
    docker-compose push
    popd
done

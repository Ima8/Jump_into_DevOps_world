docker build -t ima8/demo1 -f Dockerfile.staging .

docker run -p 3000:3000 ima8/demo1

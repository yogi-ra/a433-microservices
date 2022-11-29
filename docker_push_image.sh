#Membuat Docker image dari Dockerfile dengan nama image item-app dan memiliki tag v1
docker build . -t item-app:v1

#Melihat daftar image di lokal
docker images

#Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/yogi-ra/item-app:v1

#Login ke GitHub Packages
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u yogi-ra --password-stdin

#Mengunggah image ke GitHub Packages
docker push ghcr.io/yogi-ra/item-app:v1

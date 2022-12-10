#Build Docker image dari Dockerfile dengan nama <username-docker>/karsajobs:latest
echo "[+] Building docker image"
docker build . -t ghcr.io/yogi-ra/karsajobs:latest

#Login ke GitHub Packages
echo "[+] Login GitHub Packages"
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u yogi-ra --password-stdin

#Push image ke Github Packages
echo "[+] Push image ke GitHub Packages"
docker push ghcr.io/yogi-ra/karsajobs:latest

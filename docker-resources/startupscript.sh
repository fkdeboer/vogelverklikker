# userdata script for nandoe server
curl -sSL https://get.docker.com | sh

echo "Starting docker cia systemctl..."
sudo systemctl start docker.service
echo "Docker status:"
sudo systemctl status docker.service

echo "Starting Portainer..."
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /data/portainer:/data portainer/portainer-ce

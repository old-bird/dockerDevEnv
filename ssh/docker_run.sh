
#!/bin/bash
sudo docker run -dti -p2222:22 --name ssh-server rastasheep/ubuntu-sshd

#ssh root@localhost -p 2222

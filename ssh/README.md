
## https://hub.docker.com/r/rastasheep/ubuntu-sshd/

#Config:

* PermitRootLogin yes
* UsePAM no
* exposed port 22
* default command: /usr/sbin/sshd -D
* root password: root

# Run example
````
$ sudo docker run -d -P --name test_sshd rastasheep/ubuntu-sshd:14.04
$ sudo docker port test_sshd 22
  0.0.0.0:49154

$ ssh root@localhost -p 49154
# The password is `root`
root@test_sshd $
````

# Security
If you are making the container accessible from the internet you'll probably want to secure it bit.
You can do one of the following two things after launching the container:

* Change the root password: docker exec -ti test_sshd passwd
* Don't allow passwords at all, use keys instead:
````
$ docker exec test_sshd passwd -d root
$ docker cp file_on_host_with_allowed_public_keys test_sshd:/root/.ssh/authorized_keys
$ docker exec test_sshd chown root:root /root/.ssh/authorized_keys
````
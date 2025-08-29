ssh-keygen -t ed25519

When setting up a home Linux server it is generally better to have the private key resign on the local client computer and share the public key with the remote server, because it eliminates a security risk when the server is compromised. 

https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys#server-side-configuration-options

scp file.txt username@192.168.1.6:~/remote/directory

> write to a file, overwriting any existing contents. >> appends to a file.

cat id_ed25519_server.pub >> ~/.ssh/authorized_keys

su
apt install sudo
echo 'user    ALL=(ALL:ALL) ALL' >> /etc/sudoers

sudo systemctl restart ssh

<!-- If you want to fully disable password-based authentication, set both PasswordAuthentication and ChallengeResponseAuthentication to no -->

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

In config uncomment/change:
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys
PasswordAuthentication no
PermitEmptyPasswords no
PermitRootLogin no

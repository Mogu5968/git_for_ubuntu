echo initiating
sudo apt update
sudo apt upgrade

echo installing git...
sudo apt install git

git --version

cd ~/.ssh

echo Enter your user-name:
read user_name
git config --global user.name '${user_name}'

echo Enter your user-email:
read user_email
git config --global user.email ${user_email}

ssh-keygen -t rsa

echo Please press Enter, no name no password for the IdentityFile

cat <<EOT >> ~/.ssh/config
Host github
  HostName github.com
  IdentityFile ~/.ssh/id_rsa
  User git

Host gitlab
  HostName gitlab.com
  IdentityFile ~/.ssh/id_rsa
  User git
EOT
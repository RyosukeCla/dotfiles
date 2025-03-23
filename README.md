# dotfiles

## install

```
curl https://raw.githubusercontent.com/RyosukeCla/dotfiles/master/install.sh | bash
```

## update

```
curl https://raw.githubusercontent.com/RyosukeCla/dotfiles/master/update.sh | bash
```

## install brew and fomulas

```
curl https://raw.githubusercontent.com/RyosukeCla/dotfiles/master/install_brew.sh | bash
```

## go installation

```sh
curl https://raw.githubusercontent.com/RyosukeCla/dotfiles/master/install_go_mac.sh | bash
```

## setup ssh key for github

```bash
$ ssh-keygen -t rsa -b 4096 -C "mail@address"
# enter passphrase
# and gen key to ~/.ssh/github_rsa
$ pbcopy < ~/.ssh/github_rsa.pub
# set up ssh public key on github
$ touch ~/.ssh/config
$ cat <<EOT >> ~/.ssh/config
Host github github.com
  HostName github.com
  IdentityFile ~/.ssh/github_rsa
  User git
  AddKeysToAgent yes
EOT
$ ssh -T git@github.com
# enter passphrase
```


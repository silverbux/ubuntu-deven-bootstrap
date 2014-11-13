ubuntu-deven-bootstrap
======================

Install and setup development tools for my box, Feel free to use.

#Usage

```sh
wget -O ubuntu-bootstrap.sh https://raw.githubusercontent.com/silverbux/ubuntu-deven-bootstrap/master/ubuntu-bootstrap.sh && sudo sh ubuntu-bootstrap.sh
```

# NOTES
some notes for me

##### Boot Repair
sudo add-apt-repository ppa:yannubuntu/boot-repair

sudo sh -c "sed -i 's/trusty/saucy/g' /etc/apt/sources.list.d/yannubuntu-boot-repair-trusty.list"

sudo apt-get update

sudo apt-get install -y boot-repair && boot-repair

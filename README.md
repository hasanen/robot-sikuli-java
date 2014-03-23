robot-sikuli-java
=================

Basic setup for Robot Framework and Sikuli. 

## Prerequisites
* [Vagrant](http://www.vagrantup.com/downloads.html)
* [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
* Git

## Setup

After cloning go through these steps. `commands` are ment to be run in console.
* `git submodule init`
* `git submodule update`
* `vagrant up`
* Log in with vagrant/vagrant
* Open terminal and `cd /vagrant`
* `./runTests.sh`


## Vagrant

Box is based ubuntu 13.10 saucy server image. Top of that, there is some software installed with chef. Because it's taking so much time to setup the whole environment, I made preinstalled box. Original url for the clean ubuntu image is found as commented in Vagrantfile. 

I'm also using this great plugin, https://github.com/dotless-de/vagrant-vbguest, to keep guest additions up2date.


## Sikuli

Sikuli was installed with pack 2. Sikuli-script.jar is coming with repo now as there is not option to run installer via commandline. It should be changed to download sikuli-setup.jar and run installer if/when that is possible (see https://answers.launchpad.net/sikuli/+question/242895).

## Docs

* [Sikuli](http://doc.sikuli.org/)
* [Selenium2Library](http://rtomac.github.io/robotframework-selenium2library/doc/Selenium2Library.html)
* [BuiltIn keywords]( http://robotframework.googlecode.com/hg/doc/libraries/BuiltIn.html)

## Tests

Existing two test are there to confirm that setup is working as it should. In case those tests fails, check firefox version and update tests. 

## Clean box

* `vagrant destroy`
* Open `Vagrantfile`. Then comment line 9 and remove comment from line 10. Save the file
* `vagrant up`
* `vagrant reload` (boots to GUI with shared folders) 
# Ruby project

   1) Ruby is an Object Oriented Programming language
   2) Everything inside Ruby is an object
   3) and Ruby is interpreted language, that the ruby code is directly interpreted by the ruby interpreter instead of
        compiling it first as that of a java program.

## Windows
To download ruby, use below site
    rubyinstaller.org/downloads
Then you can choose on the basis of your OS

## Linux
We can install ruby on linux using RPM package or third part tool like "RVM". So here we are going to make us of Vagrant virtual machine "Testbox02"
Vagrant fine for the same is copied in the same directory for reference.
so for installing ruby using RPM package --> yum install ruby -y
and for RVM, use below commands to install RVM
1) gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
2) \curl -sSL https://get.rvm.io | bash -s stable
3) add the user running rvm group, for example adding vagrant to rvm group --> sudo usermod -aG rvm vagrant
4) then run this command to add rvm.sh to the path --> source /etc/profile.d/rvm.sh
example to install perticular version of ruby use below command
5) rvm install 2.2.3
6) rvm list
7) rvm use 2.2.3 // To use the perticular version of ruby.
checkout rvm --help for all the options.

## irb (Interactive Ruby Program)
    We can make use of irb software of ruby in order to perform quick calculation and syntax checking through the 
    command line.


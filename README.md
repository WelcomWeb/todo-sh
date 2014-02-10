todo-sh
=======

A minimal todo list implementation in bash.

### Installation

    wget -qO- https://raw.github.com/WelcomWeb/todo-sh/master/todo.sh > ./todo && sudo mv ./todo /usr/bin/todo && sudo chmod +x /usr/bin/todo

Copy & paste the line above, and run it in your terminal. The `todo` bash program will be installed as `/usr/bin/todo` and when run it creates a file `~/.todo`. When the script has been downloaded you'll need to restart the terminal to be able to run the `todo` command.

### Usage

#### Show your todo list by simply running `todo`

    $ todo

#### Add an issue

    $ todo add Hey, don\'t forget to feed the fishes

#### Remove an issue

You remove an entry by specifying the related number.

    $ todo
    
        1. Hey, don't forget to feed the fishes

    $ todo remove 1

#### Clear the todo list

    $ todo clear


[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/464db0a106bbc2f6a16cd0d098123518 "githalytics.com")](http://githalytics.com/WelcomWeb/todo-sh)

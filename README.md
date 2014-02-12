todo-sh
=======

A minimal todo list implementation in bash script.

### Installation

    wget -qO- https://raw.github.com/WelcomWeb/todo-sh/master/todo.sh > ./todo && sudo mv ./todo /usr/bin/todo && sudo chmod +x /usr/bin/todo

Copy & paste the line above, and run it in your terminal. The `todo` script will be installed as `/usr/bin/todo` and when run it creates a file `~/.todo`. When the script has been downloaded you'll need to restart the terminal to be able to run the `todo` command.

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

#### Using todo lists local to the working directory

You can have multiple `todo` lists, local to a directory. By appending a `.` to the call to `todo`, the script will only work in the current directory.

    $ todo . add Neat! This will only be available in the local directory!

    	1. Neat! This will only be available in the local directory!

    $ todo



    $ todo .

    	1. Neat! This will only be available in the local directory!

    $ todo . clear

#### Using todo lists in other directories

`todo` supports other working directories as well, by specifying a folder path as the first argument (that's how `.` works in the above example).

    $ todo ~/projects/my-shiny-project add Hey! This is a reminder for the My Shiny Project.

        1. Hey! This is a reminder for the My Shiny Project.

    $ todo


    $ todo ~/projects/my-shiny-project

        1. Hey! This is a reminder for the My Shiny Project.
        

#### Automatically fill your `todo` list with data from files using `search`

You can have `todo` searching through, as an example, a project folder and fill the `todo` list with all lines marked with "TODO".

    $ todo . search

        1. file1.js:4:      // TODO: Implement keyboard navigation
        2. file1.js:26:     // TODO: Clean client localStorage
        3. file2.js:108:    // TODO: Improve error checking


#### Show your todo list at terminal start up

To show your `todo` list directly when opening your terminal, you can tell your shell to run `todo` on start up.

##### For bash shell, run the following command:

    $ echo "todo" >> ~/.profile

##### For zsh shell, run:

    $ echo "todo" >> ~/.zprofile


[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/464db0a106bbc2f6a16cd0d098123518 "githalytics.com")](http://githalytics.com/WelcomWeb/todo-sh)

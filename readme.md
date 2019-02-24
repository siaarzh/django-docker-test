# Django+Docker = ❤️

This is an educational project in order to learn:
- Django
- HTML+CSS
- NGNIX
- Docker (in combination with all of the above)

## Getting Started

The included docker-compose.yml file is only a *template*. To launch the app or
start development there are some caveats that need to be taken into account:

- Django is also a command line tool that enables building of websites using
boiler plate Python code.
- Docker runs most default containers as 'root'.
- All Python packages required by the project are installed in the development
(and production) container. There are no virtual or vagrant environments.
- Development environment requires bind mounts, so that all of our code remains
in one place.

Since we're not going to install any python packages on our machine any Django
files will be created inside the Docker environent and persisted via the bind
mount. This requires a consistent level of file ownership across the project.
Therefore we add a `user:` paramener to our docker-compose file, which will be
the same as the current user on the host system. To actually launch the stack,
the command will therefore be:

    $ CURRENT_UID=$(id -u):$(id -g) docker-compose up

This is reflected in the `start_stack.sh` shell script.

### Additional scripts

There are more shell scripts that perform various functions:

- `start_container.sh` - a simple `docker run` command with the user flag set to
the current host user.
- `start_project.sh` - since Django is not installed on the host machine, this
script initialiazes the Django Project using Docker while setting the correct
user.
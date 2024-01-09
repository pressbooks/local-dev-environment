# Setup Development Environment
This repository uses Lando/Docker to provision a local instance of Pressbooks for testing and development by open source contributors using the public `pressbooks/bedrock` repo. It has been tested with GNU/Linux and MacOS.

*NOTE: This repo is intended to help developers quickly provision a Pressbooks instance locally. It should not be deployed to production environments, as it lacks several features that are useful for hosted environments (like a persistent object cache backend).* 

## Requirements
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Lando](https://docs.lando.dev/getting-started/installation.html)

## Setup steps
1. Install Git & Lando
2. Clone this repo:
   ```bash
   git clone git@github.com:pressbooks/local-dev-environment.git
   ```
3. Add `127.0.0.1 pressbooks.test` to your `/etc/hosts` file on its own line.
4. Copy these two environment files:
   ```bash
   cp .env.example .env && 
   cp config_services/.env.example config_services/.env
   ```
5. Fill in the requested `ARCHITECTURE` variable in `config_services/.env` with the chip architecture used by your computer (i.e. `amd64` or `arm64`).
5. Replace the following values in the `.env` file with values generated at https://roots.io/salts.html
```shell
AUTH_KEY='generateme'
SECURE_AUTH_KEY='generateme'
LOGGED_IN_KEY='generateme'
NONCE_KEY='generateme'
AUTH_SALT='generateme'
SECURE_AUTH_SALT='generateme'
LOGGED_IN_SALT='generateme'
NONCE_SALT='generateme'
```
6. Start your Docker Services
   ```bash
   lando start
   ```
   During this step, you may be asked for an installation folder for Prince:
	 ```bash
   Install directory
   	This is the directory in which Prince 20220930 will be installed.
   	Press Enter to accept the default directory or enter an alternative.
   	[/usr]: 
	 ```
 	 Press Enter to accept the default directory.
7. Import the prepared sample database included in this repo:
    ```bash
   lando db-import pb_local_db.sql
    ```
8. Install composer dependencies:
    ```bash
   lando composer-login
   lando composer install
   ```
9. Install Pressbooks testing utilities (required only on fresh installs)
    ```bash
   lando install-tests
   ```
10. (optional) Install PB MathJax following the instructions provided here: https://github.com/pressbooks/pb-mathjax?tab=readme-ov-file#installation

### Web access
Once you have completed these steps, you should be able to use Pressbooks locally by visiting `https://pressbooks.test`.

### Composer
You can run Composer commands inside your Lando instance like so: `lando composer install` or `lando composer update`.

### Running tests
You can run tests inside your Lando instance with the following commands:
`lando test` (this is a shortcut which runs the core Pressbooks unit tests inside your container)

`lando testbyfilter <FILTER_NAME>` Run only a specific test, for example: `lando testbyfilter test_pressbooks_cg_design_callback`. Accepts wildcards.

`lando testbygroup <GROUPNAME>` Run only a specific group of tests, for example: `lando testbygroup covergenerator`.

### XDebug configuration in PHPSTORM
You can configure XDebug locally by adding a new PHP Remote Debug configuration and setting the following values:
- Name: appserver
- Host: pressbooks.test
- Port: 443
- Use path mappings: <YOUR PATH>/app/web -> /app/web

### Add DB Connection in PHPSTORM
You can set up access to your database in PHPStorm by creating a new MariaDB connection and setting the following values:
- Check through `lando info` the host and port of your `database` service.
- In PHPStorm, go to right side menu `Database ` and click on the `+` button to add a new `MariaDB` connection 
and add the following connection data:
- host and port checked in database service.
- user: wordpress
- password: wordpress
- database: wordpress

### Notes
- The sample database includes a single empty public book and a single super admin user with a username / password of `admin / admin`.
- You can install or update dependencies in any repo by navigating to the desired location and running `lando composer install` or `lando composer update`.
- For SSH access to the appserver you can run: `lando ssh` or `lando ssh -u root` (if you wish to access the appserver as the root user)
- You can shut down the container running: `lando stop` in the main folder.
- `lando info` provides a list of all the services and their ports.
- Logs can be read with `lando logs`.

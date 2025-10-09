# Setup Pressbooks Development Environment
This repository uses Lando/Docker to provision a local instance of Pressbooks for testing and development by open source contributors. It has been tested with GNU/Linux, MacOS, and Windows.

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
   If this is your first time attempting to clone a GitHub repository, you may need to configure your computer to access GitHub via SSH key by following these instructions: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent and https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account or following this helpful video tutorial: https://www.youtube.com/watch?v=8X4u9sca3Io.

3. Add `127.0.0.1 pressbooks.test` to your `/etc/hosts` file on its own line.
4. Copy these two environment files:
   ```bash
   cp .env.example .env && 
   cp config_services/.env.example config_services/.env
   ```
5. Fill in the requested `ARCHITECTURE` variable in `config_services/.env` with the chip architecture used by your computer (i.e. `amd64` or `arm64`).
6. Replace the following values in the `.env` file with values generated at https://roots.io/salts.html
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
7. Start your Docker Services
   ```bash
   lando start
   ```
   This will create all the services needed to install a local instance of Pressbooks and import a sample database.
8. [Optional] Tell your host machine to trust the default Lando Certificate Authority by following these instructions: https://docs.lando.dev/core/v3/security.html#trusting-the-ca   

### Web access
Once you have completed these steps, you should be able to use Pressbooks locally by visiting `http://pressbooks.test` or `https://pressbooks.test`.

### Running tests
Everything needed to run unit tests will be provided when you run `lando start`. You can re-install the Pressbooks test suite by running `lando install-tests`. 

You can run tests inside your Lando instance with the following commands:
`lando composer test` (this is a shortcut which runs the core Pressbooks unit tests inside your container)

You can pipe any other PHPUnit commands to `phpunit`, for example:

`lando composer test -- --filter=<FILTER_NAME>` Run only a specific test, for example: `lando composer test -- --filter=test_pressbooks_cg_design_callback`. Accepts wildcards.

`lando composer test -- --group=<GROUPNAME>` Run only a specific group of tests, for example: `lando composer test -- --group=covergenerator`.

### XDebug configuration
You can configure XDebug locally by adding a new PHP Remote Debug configuration and setting the following values:
- Name: appserver
- Host: pressbooks.test
- Port: 443
- Use path mappings: <YOUR PATH>/app/web -> /app/web

### Add DB Connection
You can set up access to your database in your IDE by creating a new MariaDB connection and setting the following values:
1. Run `lando info` and note the `host` and `port` values used by your `database` service.
2. In PHPStorm, open the `Database` menu (on the right side of the IDE), click the `+` button and add a new `MariaDB` connection. 
3. Enter the following connection data:
    - The `host` and `port` values obtained by running `lando info` earlier
    - user: pressbooks_oss_user
    - password: secretpassword
    - database: pressbooks_oss

### Notes
- The sample database includes a single empty public book and a single super admin user with a username / password of `admin / admin`.
- The `.env.example` file provides some additional environment variables which can be used with your local Pressbooks installation but are commented out by default. If you wish to install the optional PB MathJax service, you can do so following the instructions here: https://github.com/pressbooks/pb-mathjax?tab=readme-ov-file#installation. Once you've launched the service, you can uncomment the relevant line in your local `.env` file. Similar sample `.env` variables are provided for optional DocRaptor, Sentry, Redis, and Algolia integrations.
- You can force a reimport of the sample DB by running `lando db-import-custom pb_local_db.sql --force`
- `lando info` provides a list of all the services and their ports.
- You can install or update dependencies in the container or any repo by navigating to the desired location and running `lando composer install` or `lando composer update`.
- For SSH access to the appserver you can run: `lando ssh` or `lando ssh -u root` (if you wish to access the appserver as the root user)
- You can shut down the container by running `lando stop`.
- Logs can be read with `lando logs`.

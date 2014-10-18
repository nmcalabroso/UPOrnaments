# UP Ornaments

## University of the Philippines Diliman | Hackathon

### Dependencies

Install the following dependencies:

1. Git
2. Postgres
3. Node
4. Rbenv
5. Ruby
6. Rails
7. Bundle

#### ElementaryOS/Ubuntu:

Install Git, Postgres, Node:
```bash
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install libssl-dev
sudo apt-get install postgresql libpq5 libpq-dev
sudo apt-get install git nodejs
```

Note: If this is your first time on git, it's advisable to configure your credentials first:
```bash
git config --global user.name "Neil Calabroso"
git config --global user.email "nmcalabroso@up.edu.ph"
```

Install Rbenv:

See ```https://github.com/sstephenson/rbenv``` and complete the installation instructions including the optional part:```ruby-build```.

Upon installing ```rbenv```, install Ruby 2.1.1:
```bash
rbenv install 2.1.3
rbenv global 2.1.3
```

Install Rails:
```bash
gem install rails --verbose
#--verbose command was used to see if there are errors during installation
```

Install Bundler:
```bash
gem install bundle --verbose #restart terminal after the installation
```
### Database
Create a Postgres user for the Rails app we'll create in the next step. To do this, switch into the Postgres user:
```
sudo -u postgres psql postgres
```

Then create a user (or a "role", as Postgres calls it):
```
create role "up_ornaments" with createdb login password 'upornaments';
```

### Development Environment

1. Clone our repository to your project directory.
2. In the terminal, go to the root of the project directory.
3. Run ```bundle install```.
4. Run ```rake db:create```.
5. Run ```rake db:migrate```.
6. Run ```rails server```.
7. Using your browser, go to ```http://localhost:3000```.

### Further Notes

For a high quality and readable codebase, please make these conventions as references:

1. Ruby Style Guide ```https://github.com/bbatsov/ruby-style-guide```
2. Rails Style Guide ```https://github.com/bbatsov/rails-style-guide```

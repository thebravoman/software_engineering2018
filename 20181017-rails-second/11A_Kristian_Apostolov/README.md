
## Project structure

````
app     config.ru  Gemfile.lock  package.json  README.md  tmp
bin     db         lib           public        storage    vendor
config  Gemfile    log           Rakefile      test

````

## Groups

````
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
````

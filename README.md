# Introduction

Simple gem for running specific seed files in db/seed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_seeds'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install rails_seeds
```

## Configuration

- Generate seed file

  ```
  rails g rails_seeds:seed <file name>

  # rails g rails_seeds:seed add_new_role
  ```

- Run all seed files in db/seed

  ```
  rake db:seeds:all
  ```

- Run specific files in db/seed

  ```
  rake db:seeds <file name 1> <file name 2>

  # rake db:seeds 20200303173019_add_new_role 20200303173040_add_new_product
  ```

## Ruby RSpec scaffold

This scaffold provides plain Ruby project which autoruns `rspec` when tests in spec/ or files in lib/ are saved.



Steps to achieve this scaffold

`rspec --init`

`touch spec/roman_spec.rb`

`mkdir lib`

`touch lib/roman.rb`

`guard init` or `guard init rspec`

Edit Guardfile, replace 'test' folder with 'spec' folder


## Install

`bundle`

## Run

`guard` or `bundle exec guard`

# FullstackoryAdapterPattern

Welcome to this gem!
Put your Ruby code in the file `lib/fullstackory_adapter_pattern`.
To experiment with that code, run `bin/console` for an interactive prompt.

In this gem we are exploring the Adapter Pattern

## Environment
### Dependencies
#### Install Xcode Tools
`xcode-select --install`

#### Install [Homebrew](http://brew.sh/)
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

#### Install [RVM](https://rvm.io/)
`\curl -sSL https://get.rvm.io | bash -s stable`

#### Load up RVM on shell instantiation
`echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile`
OR
`echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.zsh_profile`

#### Install [Ruby](https://www.ruby-lang.org/en/)
`rvm install 2.6.3`

#### Install [Bundler](http://bundler.io/)
`gem install bundler`

### Running
#### Get the code
`git clone git@github.com:REPO_NAME_HERE`

#### Use the correct ruby version
`rvm use 2.6.3`

#### Install all needed Gems
`bin/setup`

#### To Run Tests
`rake spec`

#### For an interactive prompt
`bin/console`

## Usage

### Section A
#### Setup
* Open two panes in your terminal both inside the gem directory
* In one pane run `bin/console`
* To start in your console run `SectionAAdapterPattern.intro` to get started
* In the other pane run `rake spec SPEC=spec/section_a_adapter_pattern_spec.rb`
### Get Started
* Now you checkout the code and comments in `lib/section_a_adapter_pattern.rb`
* Walk through the code and comments to get familiar with the Adapter Pattern
* The tests should be green when you run them for the first time
* Read over the tests `spec/section_a_adapter_pattern_spec.rb`

### Section B
#### Setup
* Setup in the same way as for section A
### Get Started
* Now you checkout the code and comments in `lib/section_b_adapter_pattern.rb`
* Walk through the code and comments to see an example of the Adapter Pattern
* The tests should be green when you run them for the first time
* Read over the tests `spec/section_b_adapter_pattern_spec.rb`

### Section C
#### Setup
* Setup in the same way as for section A and B
### Get Started
* Now you checkout the code and comments in `lib/section_c_adapter_pattern.rb`
* Walk through the code and comments to see skeleton of the Adapter Pattern
* The tests should be red when you run them for the first time
* Work on updating the tests and code so that all of them pass
* Dig in and make the implementation your own

### Section D
#### Setup
* Setup in the same way as for section A, B and C
### Get Started
* Now you checkout the code and comments in `lib/section_d_adapter_pattern.rb`
* Walk through the code and comments to see a description of a feature
* There is only one test, for the intro function
* Work on writing tests and code so that your feature works are has tests
* Dig in and remember to read to documentation for your dependencies

# Vircs

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'vircs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vircs

## Usage

===============================================================

                VIRCS - vim config management

===============================================================

[![Build Status](https://secure.travis-ci.org/jeremywrowe/vircs.png)](http://travis-ci.org/jeremywrowe/vircs)

  SETUP

    To use vircs place the source files for vircs anywhere you wish to.

      * Create folders in the vircs folder including all of your vim
        configuration in them.
        EX: 
          /path/to/vircs/folder/config1
          /path/to/vircs/folder/config2
          /path/to/vircs/folder/config3
      
      * make sure you have a .vircs file with the file path in which you
        wish to store your vim configuration files in it. Defaults to 
        ~/.vimz if one is not found.

        Example .vircs file: ~/.my_super_awesome_vim_configurations

  COMMANDS

    usage: lists this lovely help file :)
           EX: vircs usage

    list: lists all of the available vim configurations
          EX: vircs list

    use: switchs to the supplied vim configuration
          EX: vircs use foo
          (this will switch to the foo configuration)

    current: displays the current vim configuration
          EX: vircs current

    prompt_info: displays the current vim configuration as follows "vircs:configx"
                 where configx is the current configuration
          EX: vircs prompt_info

--------------------------------------------------

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

What follows is the modified MIT License that applies to
vircs

Copyright © 2012 Jeremy Rowe (http://jeremyrowe.com)

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
“Software”), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sub-license, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice, and every other copyright notice found in
this software, and all the attributions in every file, and this
permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


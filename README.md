# Vircs

Vircs is a simple way of managing vim configuration files, allowing you the 'awesome' vim user to switch between a grouping of vim configuration files. (great for pairing). This is achieved by tracking, linking and unlinking vim files and folders in a common location.

## ATTENTION!
	Vircs can be destructive if you are not careful.  Please read carefully, and don't hold me responsible, I back up my configuration files with git, I suggest you do the same. (with or without this tool) :) Vircs unlinks and links files/folders when switching between configuration sets. So if you haven't moved all of your .vim files into a vircs directory, they could get deleted if similarly named files are in the vircs configuration set. I warned you.
	
## Installation
	$ gem install vircs
	
	or
	
	clone the project, and then run `rake vircs:install` if you don't want to install via ruby gems (this might be prefered if running rvm)
	
	To use vircs place the source files for vircs anywhere you wish to. (defaults location is ~/.vims).

      * Create folders in the vircs folder including all of your vim
        configuration in them.
        EX: 
          /path/to/vircs/folder/config1
          /path/to/vircs/folder/config2
          /path/to/vircs/folder/config3
      
      * make sure you have a .vircs file with the file path in which you
        wish to store your vim configuration files in it. Defaults to 
        ~/.vims if one is not found. (rake vircs:install will create ~/.vims for you)

        Example ~/.vircs file contents: ~/.my_super_awesome_vim_configurations
		
		Example vircs folder structure 
		
		└── .vircs
			├── pat
			│   ├── .foobartest
			│   ├── .gvimrc
			│   └── .vimrc
			├── sam
			│   └── .gvimrc
			└── vircs.current
		
		Where 'pat' is a folder with vim configuration files for the 'pat' configuration set, and 'sam' is a folder 
		for the 'sam' configuration set.
	
## Usage

[![Build Status](https://secure.travis-ci.org/jeremywrowe/vircs.png)](http://travis-ci.org/jeremywrowe/vircs)

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

	dir: shows you where your configuration files are stored

    prompt_info: displays the current vim configuration as follows "vircs:configx"
                 where configx is the current configuration
          EX: vircs prompt_info

	version: gem version

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

Copyright © 2012 Jeremy Rowe

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


===============================================================

                VIRCS - vim config management

===============================================================

  SETUP

    To use vircs place the source files for vircs anywhere you wish to.

      * Link vircs to a bin directory in your path. Note: make sure to
        start a new terminal
      * Create folders in the vircs folder including all of your vim
        configuration in them.
        EX: 
          /path/to/vircs/folder/config1
          /path/to/vircs/folder/config2
          /path/to/vircs/folder/config3

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

What follows is the modified MIT License that applies to
vircs

Copyright © 2011 Jeremy Rowe (http://jeremyrowe.com)

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



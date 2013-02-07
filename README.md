Installs vim, sets it as default and preconfigures it.

# Attributes

* `node[:vim][:package]` What VIM package should we install, defaults to `vim-nox`
* `node[:vim][:binary]` Path to the binary, that will be our system-wide default editor, defaults to `/usr/bin/vim.nox:st`

This is configuration for default vimrc.local:
* `node[:vim][:default][:vimrc][:colorscheme]` defaults to `torte`
* `node[:vim][:default][:vimrc][:syntax]` defaults to `true`
* `node[:vim][:default][:vimrc][:modeline]` defaults to `true`

# Recipes

## default

Installs vim, sets it as system-wide default editor and do some minor 
configuration of vim.

# License and Authors

* Kirill Kouznetsov <agon.smith@gmail.com>

Copyright 2013, Kirill Kouznetsov

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

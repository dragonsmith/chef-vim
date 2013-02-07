name             "vim"
maintainer       "Kirill Kouznetsov"
maintainer_email "agon.smith@gmail.com"
license          "MIT"
description      "Configures the default editor"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

supports "debian"
supports "ubuntu"

recipe "editor", "Configures sytem-wide default editor."


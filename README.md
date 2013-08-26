# Kapow!

A punchy [PowerShell](http://en.wikipedia.org/wiki/Windows_PowerShell) framework, similar to [Oh my Zsh!](https://github.com/robbyrussell/oh-my-zsh) and [Bash it](https://github.com/revans/bash-it).

## But why?

The PowerShell needs some love. Seriously.

## Features

- Short hand aliases
- Useful scripts
- Tab completion *(requires PowerShell 3.0)*
- Colorful themes
- Simple documentation

## Prerequisites

Some of the plugins remove default aliases for certain PowerShell tasks, like `gl` for `Get-Location` in the `git` plugin. If you're a normal user of the PowerShell it'll probably won't affect you, but be aware of it.

## Installation

### Set up the PowerShell

First you need to make sure that you can actually execute scripts by running `Get-ExecutionPolicy` in the PowerShell. If the output doesn't say `RemoteSigned` or `Unrestricted` you need to run the PowerShell as an *Administrator* and execute the following command: `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm`. This will grant the current user the permission to run scripts.

### Install Kapow!

If you haven't got a `Microsoft.PowerShell_profile.ps1` file in your `C:\Users\USERNAME\Documents\WindowsPowerShell` folder you can run the `ìnstall.ps1` script by executing the following command: `.\install.ps1`. This will copy the `example.profile.ps1` file to the `WindowsPowerShell` folder and rename it to `Microsoft.PowerShell_profile.ps1`.

If you have a `Microsoft.PowerShell_profile.ps1` file in your `C:\Users\USERNAME\Documents\WindowsPowerShell` folder you need to copy the content of the `example.profile.ps1` and paste it into the your `Microsoft.PowerShell_profile.ps1` file.

### Set the Kapow! path

The next step is to set the `$KapowDefaultPath` variable to point to the right folder in the `Microsoft.PowerShell_profile.ps1` file. The default path is `C:\Git\kapow`. This is incredibly important since everything will be sourced from that particular folder.

### Set which plugins to use

The last thing you need to do is to choose which plugins to use. Look around in the `plugins` and then add them to the `$KapowUserPlugins` array in the `Microsoft.PowerShell_profile.ps1` file and you're done!

### Optional: install Console2

The look of the PowerShell itself leaves a lot to be desired. If you want a more fine tuned experience I highly recommend that you install [Console2](http://sourceforge.net/projects/console/).

## Screenshots

### Bashlet theme

![Bashlet theme](http://i.imgur.com/a7HecHS.png)

### Inon theme

![Inon theme](http://i.imgur.com/yX5Uf9b.png)

### Punchy theme

![Punchy theme](http://i.imgur.com/ywTmdtT.png)

### Simple theme

![Simple theme](http://i.imgur.com/ipMV9xB.png)

## Acknowledgements

- [PowerShell Cookbook](http://www.johndcook.com/PowerShellCookbook.html)
- [Some tips on using git with Windows](http://mohundro.com/blog/2010/02/04/some-tips-on-using-git-with-windows/)
- [PowerShell: Change the Color of the Prompt](http://choorucode.com/2011/09/03/powershell-change-the-color-of-the-prompt/)
- [Autocompleting ssh, rake, cap command parameters using PowerShell](http://allyourcodearebelongto.me/blog/2008/11/23/autocompleting-ssh-rake-cap-command-parameters-using-powershell/)

## License

**The MIT License (MIT)**

*Copyright (c) 2013 Ellen Gummesson*

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

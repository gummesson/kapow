# Kapow!

A punchy [PowerShell](http://en.wikipedia.org/wiki/Windows_PowerShell) framework, similar to [Oh my Zsh!](https://github.com/robbyrussell/oh-my-zsh) and [Bash it](https://github.com/revans/bash-it).

## But why?

The PowerShell needs some love. Seriously.

## Features

- Short hand aliases
- Useful scripts
- Tab completion *(requires PowerShell 3.0)*
- Colorful themes

## Prerequisites

Kapow! requires atleast PowerShell 2.0 in order to run. You can find out which version you're using by running `$PSVersionTable.PsVersion`.

## Installation

### Set up the PowerShell

First you need to make sure that you can actually execute scripts by running `Get-ExecutionPolicy` in the PowerShell. If the output doesn't say `RemoteSigned` or `Unrestricted` you need to run the PowerShell as an *Administrator* and execute the following command: `Set-ExecutionPolicy RemoteSigned`. This will grant the current user the permission to run scripts.

### Install Kapow!

Run the `ìnstall.ps1` script by executing the following command: `.\install.ps1`. This will copy and create the `Kapow.psm1` file to the `WindowsPowerShell\Modules` folder. You can then import the module by adding `Import-Module Kapow` to either your `Windows.PowerShell_profile.ps1` or `profile.ps1` file.

### Set your default settings

The next step is to set the `$KapowDefaultPath` variable to point to the right folder in the `Kapow.psm1` file. The default path is `C:\Git\kapow`. This is incredibly important since everything will be sourced from that particular folder!

Change the `$KapowDefaultHome` if you're planning on using a theme that's replacing your "home" folder with a tilde (`~`) and set the default prompt theme by changing the `$KapowDefaultTheme` variable.

The `$KapowDefaultEditor` variable is primarily used for the `edit` plugin, so if you're not planning to use it leave it blank. The same thing is true for the `$KapowEnableGitColors`. Set it to `$false` if you're not going to use the `git` plugin.

The last thing you need to do is to choose which plugins to use. Look around in the `plugins` and then add them to the `$KapowDefaultPlugins` array in the `Kapow.psm1` file and you're done!

### Optional: install a better console

The look of the PowerShell itself leaves a lot to be desired. If you want a more fine tuned experience I highly recommend that you install [Console2](http://sourceforge.net/projects/console/), or better yet, [ConsoleZ](https://github.com/cbucher/console).

## Screenshots

### Bashlet theme

![Bashlet theme](http://i.imgur.com/TIygWlS.png)

### Crunchy theme

![Crunchy theme](http://i.imgur.com/O0yMuPa.png)

### Crunchier theme

![Crunchier theme](http://i.imgur.com/XLAxWKd.png)

### Inon theme

![Inon theme](http://i.imgur.com/VmXM43I.png)

### Punchy theme

![Punchy theme](http://i.imgur.com/qnifdjq.png)

### Simple theme

![Simple theme](http://i.imgur.com/yh4DIM7.png)

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

Terminal & Editor Shortcuts Cheatsheet
======================================

Key symbols
-----------
- **⌘** is the _command key_
- **⌥** is the _alt key_ (also called the _option key_)
- **^** is the _control key_
- **⇧** is the _shift key_


Terminal
--------

### Changing folders using `cd` ###

In your terminal, you will spend a lot of time navigating from folder to folder.
Here are a few different ways to use `cd` that you may not have seen.

- `cd` (no argments) - navigates to your home directory
- `cd ~` - also navigates to your home directory
- `cd ~/Desktop` - navigates to the `Desktop` folder in your home directory
- `cd ~/Downloads/pizza` - navigates to the `pizza` folder inside of the `Downloads` in your home directory
- `cd ..` - navigates to the "parent" of the current folder
- `cd ../..` - navigates to the "grandparent" of the current folder
- `cd ../../project` - navigates to the `project` folder inside the "grandparent" of the current folder


### Open your editor from the terminal ###

Most of the time you are going to need to navigate to your project's folder
in your terminal to use commands in the folder.
For that reason, it's really convenient
to be able to open that folder in your editor from the terminal
using special commands that vary by editor.

- `atom` command for the **Atom** editor (automatically installed)
- `subl` command for the **Sublime Text 3** editor
  (see [the installation instructions](https://www.sublimetext.com/docs/3/osx_command_line.html))
- `subl` command for the **Sublime Text 2** editor
  (see [the installation instructions](https://www.sublimetext.com/docs/2/osx_command_line.html))


### Use the _Tab_ key to autocomplete ###

The _Tab_ key can autocomplete names of folders and files
when you are navigating in the terminal.
Use them to type less but also detect when you are making typos.

- Tab to autocomplete `~/Doc` to `~/Documents`
- Tab to autocomplete `ruby bl` to `ruby blah.rb`


If there are several matches for your autocomplete,
it will show you all the available options.

- To autocomplete `~/Do`, there are two options: `Documents` and `Downloads`.
  Tab will show you both those options.


### Command history ###

With the `↑` key (up arrow key), you can see past commands that you have run.
If you need to modify one of the previous commands,
you can use the right and left arrows.

If you want to quickly jump to the beginning or end of a command you can use:

- `^A` - jump to the beginning of the command
- `^E` - jump to the end of the command


### Aliases ###

You can define commands of your own by creating aliases.
An alias is basically a custom name you can give to a longer command.

Take something like `rails db:drop db:create db:migrate db:seed`.
Rather than having to type that long command every time,
you can define an alias like `dbnuke` for it.

```bash
alias dbnuke="rails db:drop db:create db:migrate db:seed"
```

After you paste that command once in your terminal,
you will be able to run `dbnuke` to do the same task.
Sadly, if you close your terminal window or open another one,
the command won't be defined anymore.

To make your terminal remember your aliases,
you've got to add them to a special file named `.bash_profile`.
This file goes in your home directory.
To edit it, run `atom ~/.bash_profile` or `subl ~/.bash_profile`.

Add any aliases desired, save, and close all your terminal windows.


macOS
-----
- `⌘ Tab` - switch between applications
- ``⌘ ` `` - switch between _windows_ in the same application
- switch between _tabs_ in the same window (_depends on the app_)
  * `⇧ ⌘ [` for previous tab and `⇧ ⌘ ]` for next tab
  * `⌥ ⌘ ←` for previous tab and `⌥ ⌘ →` for next tab
  * `^Tab` for previous tab and `⇧ ^Tab` for next tab
- `⌘ ,` - open app preferences
- `⌘ S` - save
- `⌘ C` - copy
- `⌘ V` - paste
- `⌘ Z` - undo
- `⌘ Y` or `⇧ ⌘ Z` - redo

Sublime Text
------------
- `⌘ W` - close current tab
- `⇧ ⌘ W` - close current window
- `⇧ ⌘ T` - undo closed tab or window
- `⌘ A` -  select all
- `⌘ ↑` - jump to beginning of file
- `⌘ ↓` - jump to end of file
- `⌘ ←` or `^A` - jump to beginning of line
- `⌘ →` or `^E` - jump to the end of line
- `⌘ L` - select current line
- `⇧ + arrows` - select as cursor moves
- `⇧ ⌘ L` - add a cursor to each selected line
- `⌘ D` - add cursor on next selection
- `^ ⌘ ↑` - move line or selection up
- `^ ⌘ ↓` - move line or selection down
- `⌘ F` - search current file
- `⇧ ⌘ F` - search entire project
- `⌘ P` - fuzzy search for file names

hint -- search a hints file
===========================

This program is designed to be a quick reference if you need
to know something quickly. I use it as a reminder for syntax
of commands that I use infrequently.

(If you have grep colorized, your 'hint' output will be too.)

## Usage:

`hint [options] SEARCHTERM`

Options:

| Short Option | Long Option     | Description                             |
| ---          | ---             | ---                                     |
| `-s`         | `--sensitive`   | Force case sensitive search             |
| `-i`         | `--insensitive` | Force case insensitive search (default) |
| `-c`         | `--colors`      | Force colors (default)                  |
| `-C`         | `--no-colors`   | Force avoid colors                      |
| `-h`         | `--help`        | Show help message                       |
| `-e`         | `--edit`        | Edit the hintfile                       |

The searching is enacted by grep, so you can use various regex patterns to be more specific, if you'd like. For instance:

- Preface SEARCHTERM with a `^` to only search start-of-lines.

Use a capital letter in SEARCHTERM to autoforce case sensitivity.

### More About The Edit Option

Using this option will open your hintfile with whatever your `$EDITOR` environment variable is set to, or `vi` if `$EDITOR` isn't set.

If you'd like to set your `$EDITOR` environment variable, you'll usually need to put a line like `export EDITOR=nano` in your shell's `.profile` file. Please see your shell's documentation for the recommended method.

In MacOS, some possibly useful options for `$EDITOR`:

- `"open -a TextEdit"` (Specifically open with an app named TextEdit -- can alternatively use any app you want!)
- `"open -e"` (Specifically open with TextEdit)
- `"open -t"` (Open in whatever the default text editor is)


## Requirements:

The following external programs are required to be in your path:

- bash
- basename
- grep

(These are all standard, unless you're on Windows.)


## Installation:

To operate `hint` with its default settings, you must first move the file
`hint` to a location in your path. A good location that is typically in one's
path is: `/usr/local/bin/`

(It should be noted that this location in not necessarily in one's path. To
check, execute `echo $PATH` and see if it shows up in the ensuing list.)

Next, create a file named `hints.txt` in your home directory, or copy the
included example file to your home directory. To copy the included example
file, you can execute the following:

    cp example_hints.txt ~/hints.txt

You may then edit `~/hints.txt` to add or remove hints. (Note that there is
formatting advice inside the example hints file.)

Or if you'd rather use a different filename or location, please change the
following lines in `hint` as you see fit:

    HINTDIR=$HOME
    HINTFILE="hints.txt"

### Troubleshooting:

You may need to set `hint` to be executable before you can run it. To do so: `chmod +x hint`


## Extras:

You may like to use some simple Vim highlighting when editing your hintfile. If so, please see [https://github.com/joem/vim-hints_syntax](https://github.com/joem/vim-hints_syntax).


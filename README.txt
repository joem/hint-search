Shell program to search a hints file.

    This program is designed to be a quick reference if you need to know
    something quickly. I use it as a reminder for syntax of commands that I use
    infrequently.

    (If you have grep colorized, your 'hint' output will be too.)

Usage:

    hint [--help] SEARCHTERM

    (Preface SEARCHTERM with a ^ to only search start-of-lines.)

External programs req'd:
    bash, basename, grep (all standard, unless you're on Windows)
Revision History:
    check the git log

----------------------------------------------------------------

To operate "hint" with its default settings, you must first move the file
"hint" to a location in your path. A good location that is typically in one's
path is:
  /usr/local/bin/

(It should be noted that this location in not necessarily in one's path. To
check, execute "echo $PATH" and see if it shows up in the ensuing list.)

Next, create a file named "hints.txt" in your home directory, or copy the
included example file to your home directory. To copy the included example
file, you can execute the following:
  cp example_hints.txt ~/hints.txt

You may then edit ~/hints.txt to add or remove hints. (Note that there is
formatting advice inside the example hints file.)

Or if you'd rather use a different filename or location, please change the
following lines in "hint" as you see fit:

HINTDIR=$HOME
HINTFILE="hints.txt"


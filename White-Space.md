# White Space

## Internal Field Separator

Bash has a variable IFS which contains a list of characters that bash will interpret as separating one thing from the next thing.

## For example:
```bash
IFS=":" read a b c <<< "1:2:3"
declare -p a b c
```

What's this do?

`IFS=":"` will set the value of the IFS variable.  

When prepended before another command such as `read a b c` it will modify the environment only for that command.

`<<< "1:2:3"` is a form of output redirection - more about that later

`declare -p a b c` will output a declare command which will correctly set the named variables `$a`, `$b` and `$c` to their current values. This is very useful for inspecting the contents of variables or saving them to a file to be reloaded later.

And the output will be:
```bash
declare -- a="1"
declare -- b="2"
declare -- c="3"
```

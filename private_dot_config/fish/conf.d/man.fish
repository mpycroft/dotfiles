# Set bat as the pager for man files.
set -gx MANPAGER "sh -c 'col -bx | bat -p -lman --paging always'"

# Using fisher_path doesn't automatically work, we need to manually add
# Fisher's completion and function paths to Fish and load any scripts.
set -g fisher_path ~/.config/fisher

# We could just prepend the paths but we actually want fisher files to come
# after those in the fish directory (but before any system ones).
set fish_function_path $fish_function_path[1] $fisher_path/functions \
    $fish_function_path[2..]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions \
    $fish_complete_path[2..]

for conf_file in $fisher_path/conf.d/*.fish
    source $conf_file
end

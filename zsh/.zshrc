# Java shit
# jenv allows you to not explicitly set JAVA_HOME, and switch between java versions easily
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# These are to avoid having to run `jenv exec` to get your jenv version somewhere that you need it
# for example, to run the java autocomplete module coc-java, you'd have to do `jenv exec vim`
# this is super annoying. this stuff explicitly sets java home with your jenv version, avoiding that annoying bs.
# you can confirm these work by running `echo $JAVA_HOME`
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
# use this alias after doing jenv global (or local/shell) to re-export JAVA_HOME pointing to the jenv version
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

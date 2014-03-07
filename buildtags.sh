find `pwd -P` -type f \( -name '*.rb' -o -name '*.yml' -o -name '*.rhtml' -o -name '.sql' -o -name '.spec' \) > cscope.files
ctags -R -L cscope.files

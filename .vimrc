syntax on
set expandtab
set tabstop=2
" Your customised tags go first.
set tags+=~/tags,$DOC/tags
let parent_dir = expand("%:p:h")."/"
while match(parent_dir,"/",0)>-1 && isdirectory(parent_dir)
  let parent_tag = parent_dir."tags"
  if filereadable(parent_tag)
    exe ":set tags+=".parent_tag
  endif
  let parent_dir = substitute(parent_dir,"[^/]*/$","","")
endwhile
let parent_dir = getcwd()."/"
while match(parent_dir,"/",0)>-1 && isdirectory(parent_dir)
  let parent_tag = parent_dir."tags"
  if filereadable(parent_tag)
    exe ":set tags+=".parent_tag
  endif
  let parent_dir = substitute(parent_dir,"[^/]*/$","","")
endwhile
unlet parent_dir parent_tag

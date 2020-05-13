" FUNCTIONS
"
" adding comments
function! Comment()
  let ft = &filetype
        if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
                silent s/^/\#/
        elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go' || ft == 'typescript' || ft == 'dart'
          silent s:^:\/\/:g
        elseif ft == 'tex'
          silent s:^:%:g
        elseif ft == 'vim'
    silent s:^:\":g
  endif
endfunction

" removing comments
function! Uncomment()
        let ft = &filetype
        if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
                silent s/^\#//
        elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go' || ft == 'typescript' || ft == 'dart'
                silent s:^\/\/
        elseif ft == 'tex'
                silent s:^%::g
        elseif ft == 'vim'
    silent s:^\"::g
  endif
endfunction

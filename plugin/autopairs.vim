" Turn off auto pair for double quite (") in vim files
" since this is how you do comments
au FileType vim let b:AutoPairs = AutoPairsDefine({}, ['"'])

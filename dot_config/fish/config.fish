if status is-interactive
    # 环境变量 {{{

    # VSCode集成
    if string match -q "$TERM_PROGRAM" "vscode"
        . (code --locate-shell-integration-path fish)
    end
    # }}}

    # 缩写 {{{
    abbr -a --position anywhere rm 'rm -I'
    abbr -a --position anywhere mv 'mv -i'
    abbr -a --position anywhere cp 'cp -i' 

    abbr -a ls 'lsd'
    abbr -a ll 'lsd -lh'
    abbr -a la 'lsd -Alh'
    abbr -a tree 'lsd -A --tree'

    abbr -a --position anywhere cat 'bat'

    abbr -a history 'history --show-time="%Y-%m-%d %H:%M:%S "'

    abbr -a aria2c 'aria2c -s16 -x16 -k1M'
    # }}}

    # 键盘绑定 {{{
    bind -M insert \e\[1\;3C "commandline -i ' '"
    # }}}
end

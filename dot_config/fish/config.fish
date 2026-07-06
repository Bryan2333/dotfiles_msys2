if status is-interactive
    # 环境变量 {{{

    # VSCode集成
    if string match -q "$TERM_PROGRAM" "vscode"
        . (code --locate-shell-integration-path fish)
    end
    # }}}

    # 缩写 {{{
    abbr -a rm 'rm -I'
    abbr -a mv 'mv -i'
    abbr -a cp 'cp -i'
    abbr -a _sudo_rm  --command sudo --regex '^rm$'  'rm -I'
    abbr -a _sudo_mv  --command sudo --regex '^mv$'  'mv -i'
    abbr -a _sudo_cp  --command sudo --regex '^cp$'  'cp -i'

    abbr -a ls 'lsd'
    abbr -a ll 'lsd -lh'
    abbr -a la 'lsd -Alh'
    abbr -a tree 'lsd -A --tree'

    abbr -a cat 'bat'
    abbr -a _sudo_cat --command sudo --regex '^cat$' 'bat'

    abbr -a history 'history --show-time="%Y-%m-%d %H:%M:%S "'

    abbr -a aria2c 'aria2c -s16 -x16 -k1M'
    # }}}

    # 键盘绑定 {{{
    bind -M insert \e\[1\;3C "commandline -i ' '"
    # }}}
end

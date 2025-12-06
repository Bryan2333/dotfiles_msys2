if status is-interactive
    # 环境变量 {{{
    ## XDG目录
    set -gx XDG_CACHE_HOME  $HOME/.cache
    set -gx XDG_CONFIG_HOME $HOME/.config
    set -gx XDG_DATA_HOME   $HOME/.local/share
    set -gx XDG_STATE_HOME  $HOME/.local/state

    set -gx BAT_CONFIG_PATH $XDG_CONFIG_HOME/bat/config
    set -gx WGETRC          $XDG_CONFIG_HOME/wgetrc

    ## nvm
    set -gx nvm_data    $XDG_DATA_HOME/nvm
    set -gx nvm_mirror  https://mirrors.ustc.edu.cn/node

    ## 默认编辑器
    set -gx EDITOR vim
    set -gx VISUAL $EDITOR

    ## FZF默认命令
    set -gx FZF_DEFAULT_COMMAND "find -xdev \! \( -path '*/.git' -prune \) -printf '%P\n'"

    ## less命令显示PUA
    set -gx LESSUTFCHARDEF E000-F8FF:p,F0000-FFFFD:p,100000-10FFFD:p

    ## 扩展PATH
    fish_add_path -a $XDG_DATA_HOME/npm $HOME/.local/bin
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

    abbr -a make 'mingw32-make'
    # }}}

    # 键盘绑定 {{{
    bind -M insert \e\[1\;3C "commandline -i ' '"
    # }}}

    ## 启动ssh-agent
    if type -q fish_ssh_agent
        fish_ssh_agent
    end
end

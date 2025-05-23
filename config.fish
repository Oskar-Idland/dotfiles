if status is-interactive
    # Commands to run in interactive sessions can go here

    ### KOBE ###
    abbr --add ssh-a 'ssh -i ~/.ssh/lan_kyoto_hpc b38535@camphor.kudpc.kyoto-u.ac.jp'
    abbr --add ssh-b 'ssh -i ~/.ssh/lan_kyoto_hpc b38535@laurel.kudpc.kyoto-u.ac.jp'
    abbr --add ssh-c 'ssh -i ~/.ssh/lan_kyoto_hpc b38535@cinnamon.kudpc.kyoto-u.ac.jp'
    abbr --add ssh-g 'ssh -i ~/.ssh/lan_kyoto_hpc b38535@gardenia.kudpc.kyoto-u.ac.jp'

    ### STARSHIP ###
    starship init fish | source
    
    ### FISH ###
    #set fish_cursor_default block
    #set fish_cursor_visual block

    
    ### PACMAN ###
    abbr --add srh  'pacman -Ss'
    abbr --add qry  'pacman -Qs'
    abbr --add inst 'sudo pacman -S'
    abbr --add pcm  'sudo pacman -Syu'
    abbr --add sort-packages 'pacman -Qi | grep -E "^(Name|Installed)" | cut -f2 -d':' | paste - - | column -t | sort -nrk 2 | grep MiB | less'
    ### CLI UTILS ###
    abbr --add ls lsd
    abbr --add la 'lsd -a'
    abbr --add ll 'lsd -l'

    abbr --add fzc 'fzf | wl-copy -n' 

    abbr --add lg lazygit

    abbr --add mkdir "mkdir -p"
    
    #                    No trailing whitespace
    #                              v 
    abbr --add diff 'colordiff -y -Z -W 70 --suppress-common-lines'
    #                           ^     ^
    #                Side by side     Width of 70 chars

    abbr --add ffa 'fastfetch -c all.jsonc | grep -i '
    abbr --add ffi 'fastfetch -c examples/10.jsonc'
    abbr --add ffb 'fastfetch -c examples/9.jsonc'
    abbr --add ff7 'fastfetch -c examples/7.jsonc'

    ### KITTY  ###                  
    abbr --add icat 'kitten icat'
    abbr --add kitty-fonts 'kitty +list-fonts'

    ### EDITOR  ###
    abbr --add mc micro
    abbr --add mcr 'micro -readonly on'

    ### PYTHON  ###
#   abbr --add cnda 'conda init fish &> /dev/null ; source ~/.config/fish/config.fish ; conda activate myenv'
#   abbr --add cndd 'conda deactivate ; conda deactivate'
    abbr --add cnda  'conda activate myenv'
    abbr --add cndai 'conda activate IN4050'
    abbr --add cndaq 'conda activate FYS5419'
    abbr --add cndal 'conda activate ./venv'
    abbr --add cndd  'conda deactivate'
    abbr --add py    'python'

    ### GIT  ###
  # abbr --add gita  --set-cursor 'git add -A && git commit -m "%"'
    abbr --add gita --set-cursor 'git add -A && git commit -m "%" && git push'    
    
    ### FOLDERS  ###
    abbr --add cdc --set-cursor 'cd ~/.config/%'
    abbr --add cdd 'cd ~/repos/dotfiles'
    abbr --add cds 'cd ~/repos/scripts'
    abbr --add cdo 'cd /mnt/C/Users/Oskar'
    abbr --add osk --position anywhere /mnt/C/Users/Oskar
    abbr --add cdm --set-cursor 'cd ~/repos/courses/%'
    
    abbr --add '.'  'cd ../'
    #abbr --add '..' 'cd ../..'
    #abbr --add '.3' 'cd ../../..'
    #abbr --add '.4' 'cd ../../../'
    function multicd
        echo cd (string repeat -n (string length -- $argv[1]) ../)
    end
    abbr --add dotdot --regex '^\.\.+$' --function multicd

    ### SOFTWARE ###
    alias menk='microsoft-edge-stable --force-device-scale-factor=2.0 ~/repos/Knowlegde-Vault/D\&D/Menk_character_sheet.pdf > /dev/null 2>&1 & disown ; exit'
    
    ### PLUGINS  ###
    # LS_COLORS
    setenv LS_COLORS 'rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.crdownload=00;90:*.dpkg-dist=00;90:*.dpkg-new=00;90:*.dpkg-old=00;90:*.dpkg-tmp=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:*.swp=00;90:*.tmp=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:'
    source /usr/share/LS_COLORS/dircolors.csh

    ### HyDE ###
    source /usr/share/hyde-cli/Hyde.fish

    ### MAN  ###
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
    set -x MANROFFOPT "-c"
    
    ### OTHER ###
    alias fresh='reload-fish ; clear ; fish_greeting'
    


    set -Ux QT_DEVICE_PIXEL_RATIO 0
    set -Ux QT_AUTO_SCREEN_SCALE_FACTOR 1
    set -Ux QT_SCREEN_SCALE_FACTORS 1
    set -Ux QT_SCALE_FACTOR 1

end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#if test -f /home/oskar/miniconda3/bin/conda
#    eval /home/oskar/miniconda3/bin/conda "shell.fish" "hook" $argv | source
#else
#    if test -f "/home/oskar/miniconda3/etc/fish/conf.d/conda.fish"
        source "/home/oskar/miniconda3/etc/fish/conf.d/conda.fish"
#    else
#        set -x PATH "/home/oskar/miniconda3/bin" $PATH
#    end
#end
# <<< conda initialize <<<

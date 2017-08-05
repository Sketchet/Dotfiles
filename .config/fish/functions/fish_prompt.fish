function fish_prompt
    set_color --bold purple
    echo -n (whoami)
    echo -n ' -> '
    set_color normal
end

function fish_right_prompt
    set_color --bold black
    echo -n (pwd)
    echo -n ' '
    echo -n (custom_fish_mode_prompt)
end

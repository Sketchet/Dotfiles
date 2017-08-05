function fish_mode_prompt
end

function custom_fish_mode_prompt
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set_color --bold purple
                echo '[n]'
            case insert
                set_color --bold red
                echo '[i]'
            case replace-one
                set_color --bold red
                echo '[r]'
            case visual
                set_color --bold blue
                echo '[v]'
        end
        set_color normal
    end
end

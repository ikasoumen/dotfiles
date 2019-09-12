function fish_right_prompt
    # Main
    echo -n (prompt_pwd)

    # Git
    set last_status $status
    printf '%s ' (__fish_git_prompt)
end
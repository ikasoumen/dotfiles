function fish_prompt
    printf $USER'@'(prompt_hostname)
    
    # Shell
    test $USER = 'root'; and echo '# '; or echo '$ '
end
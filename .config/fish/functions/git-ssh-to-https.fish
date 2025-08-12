function git-ssh-to-https
    set remote (git remote)
    if test -z "$remote"
        echo "No git remotes found."
        return 1
    end

    for r in $remote
        set url (git remote get-url $r)
        if string match -r '^git@github.com:(.*).git$' $url
            set path (string match -r '^git@github.com:(.*).git$' $url)[2]
            set https_url "https://github.com/$path.git"
            git remote set-url $r $https_url
            echo "Changed $r from SSH to HTTPS: $https_url"
        else if string match -r '^git@github.com:(.*)$' $url
            set path (string match -r '^git@github.com:(.*)$' $url)[2]
            set https_url "https://github.com/$path"
            git remote set-url $r $https_url
            echo "Changed $r from SSH to HTTPS: $https_url"
        else
            echo "Remote $r is not using SSH or already using HTTPS: $url"
        end
    end
end

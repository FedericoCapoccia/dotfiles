function gitacp
    git add --all
    git commit -m "$(curl -s https://whatthecommit.com/index.txt)"
    git push
end

function grb -a tag
  git branch -D $tag
  git push origin :$tag
end

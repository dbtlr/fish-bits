function grt -a tag
  git tag -d $tag
  git push origin :refs/tags/$tag
end
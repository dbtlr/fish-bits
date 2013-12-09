function prepare -a release_type version dot_release_version
  if [ "$release_type" = "" ]
    set release_type ""
  end

  switch $release_type
    case hotfix candidate
      if [ "$version" = "" ]
        echo "ERROR: You must supply a version with a $release_type release"
        return 1
      end

      if [ "$dot_release_version" = "" ]
        echo "ERROR: You must supply a dot_release_version with a $release_type release"
        return 1
      end

      if [ "$release_type" = "hotfix" ]
        set tag "$version-$release_type$dot_release_version"
      else
        set tag "release-$version-$release_type$dot_release_version"
      end

    case release
      if [ "$version" = "" ]
        echo "ERROR: You must supply a version with a release"
        return 1
      end

      set tag "$version"

    case '*'
      echo "ERROR: You must supply a release_type of 'release', 'candidate', or 'hotfix'."
      return 1
  end

  # Pull the latest copy, to make sure the tag we're creating doesn't already exist.
  git pull

  set has_tag (git tag | grep $tag)


  if [ "$tag" = "$has_tag" ]
    echo "$tag already is set. Aborting."
    return 1
  end

  echo "Tagging $release_type: $tag"

  git tag -a $tag -m "$release_type $tag"
  git push
  git push --tags
end
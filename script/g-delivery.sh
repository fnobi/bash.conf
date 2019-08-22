function g-delivery {
  if [ ! $1 ] || [ ! $2 ]; then
    echo "$ g-delivery commit_name dir_name"
    exit
  fi
  
  dest_path=public
  prefix_name=ziptmp
  zip_name=tmp.zip
  branch=develop
  
  git archive $branch --format zip -o $zip_name --prefix $prefix_name/ `git diff --name-only --diff-filter=d $1 $dest_path`
  unzip $zip_name
  rm $zip_name
  mv $prefix_name/$dest_path $2
  rm -rf $prefix_name
  
  tree $2
}

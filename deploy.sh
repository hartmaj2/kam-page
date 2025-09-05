jekyll build
rsync -avz --delete _site/ hartmaj@kam.mff.cuni.cz:WWW/
ssh hartmaj@kam.mff.cuni.cz "find ~/WWW -type f -exec sed -i -e 's|href=\"/|href=\"/~hartmaj/|g' -e 's|src=\"/|src=\"/~hartmaj/|g' {} +"
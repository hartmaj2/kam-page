# Personal webpage at MFF UK

## Deployment

Run following commands in the given order.

`jekyll serve`

`ssh hartmaj@kam.mff.cuni.cz 'rm -rf ~/WWW/*'`

`scp -r _site/* hartmaj@kam.mff.cuni.cz:WWW/`

Then replace `href="/` with `href="/~hartmaj/`

Then replace `src="/` with `src="/~hartmaj/`

Tip: use this command `ssh hartmaj@kam.mff.cuni.cz "find ~/WWW -type f -exec sed -i -e 's|href=\"/|href=\"/~hartmaj/|g' -e 's|src=\"/|src=\"/~hartmaj/|g' {} +"`
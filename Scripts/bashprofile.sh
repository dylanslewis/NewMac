#!/usr/bin/env bash

echo "Copying bash_profile"
cd "${BASH_SOURCE[0]%/*}"
cp ../Dependancies/bash_profile ~/.bash_profile

echo "Opening GitHub Personal Access Tokens page. Generate a Personal Access Token with repo access."
open https://github.com/settings/tokens

echo "What is your Personal Access Token for TeamStatus?"
read personalaccesstoken

echo "#!/usr/bin/env bash

export TEAMSTATUS_GITHUB_API_KEY=$\"$personalaccesstoken\"
" > ~/.tokens.sh
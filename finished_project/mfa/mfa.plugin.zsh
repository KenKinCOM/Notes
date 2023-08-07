# web_search from terminal

function mfa() {
  # emalate -L zsh

  # define search engine accounts
  typeset -A accounts
  accounts=(
    usmadmin "4HULTLJUCIKPOF4E6P2DNEGK6W3Z64LG"
	usmme    "OQMGFSHD3J6EPFLXTAKR6BAHELJBCWTW"
	alime    "TSELLSYTUTNMHBCS62AM5OIDNX23YDWUKM4GJRRP6AR5SG4D3VSB5UDZITMFVROS"
  )

  # check whether the search engine is supported
  if [[ -z "$accounts[$1]" ]]; then
    echo "Account '$1' not supported."
    return 1
  else
    oathtool --totp --base32 $accounts[$1] |pbcopy
  fi
   
}


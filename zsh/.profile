############
# System

source ~/.common_profile

# End system
############


############
function sshp {
    # $1 = env
    # $2 = user
    # $3 = commands (optional)
    echo "SHELL: $SHELL"
    # if [[ $# -lt 2 ]]; then
    #     echo "$@ not enough params, need 2: [host username]"
    #     return 
    # fi
    SSHP_CONF="$MAC_HOME/.ssh/sshpass.conf"

    row=($(python3 -c "import csv
import sys
h, u = '$1', '$2'
with open('$SSHP_CONF', 'r') as f:
  reader = csv.reader(f, delimiter=' ')
  for line in reader:
    if line[0] == h:
      if u == '':
        print(f'not provide user, take first user = {line[3]}@{line[0]}', file=sys.stderr)
        print(' '.join(line))
        break
      else:
        if u in line[3]:
          print(' '.join(line))
          break
  else:
    print('not found', file=sys.stderr)
"))

    # echo "row: -${row[@]}-"
    # echo "row0 ${row[0]} row1 ${row[1]} row2 ${row[2]} row3 ${row[3]}"
    # echo "SSHPASS=${row[4]} sshpass -e ssh ${row[3]}\@${row[1]}"
    if [[ ! -z "$row" ]]; then
        SSHPASS="${row[4]}" sshpass -e ssh "${row[3]}"@"${row[1]}"
    else
      echo "no row found!"
    fi
}

alias rm='trash'

function vl {
    python3 -c "import random; pred = ' '.join(['{:02d}'.format(random.randint(1, 55)) for _ in range(6)]); print(pred)"
}

# pip error on bigsur
export SYSTEM_VERSION_COMPAT=1
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

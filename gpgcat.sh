# copy and paste these into your ~/.bashrc or whatever you source on terminal startup

function encat() {
  case $# in
  0)
    echo "usage: $0 file [ file ... ]"
    return 1
    ;;
  1)
    gpg -a -r YOUR_KEY_ID --encrypt < $1
    ;;
  *)
    for f in $@; do
      echo "$f:"
      gpg -a -r YOUR_KEY_ID --encrypt < $f
    done
  esac
}

function decat() {
  case $# in
  0)
    echo "usage: $0 file [ file ... ]"
    return 1
    ;;
  1)
    gpg -a --decrypt < $1
    ;;
  *)
    for f in $@; do
      echo "$f:"
      gpg -a --decrypt < $f
    done
  esac
}
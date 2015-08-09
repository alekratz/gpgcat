# copy and paste these into your ~/.bashrc or whatever you source on terminal startup
# for the lazy bash users:
# $ curl https://raw.githubusercontent.com/alekratz/gpgcat/master/gpgcat.sh | grep '^[^#]' >> ~/.bashrc
# for the lazy zsh users:
# $ curl https://raw.githubusercontent.com/alekratz/gpgcat/master/gpgcat.sh | grep '^[^#] >> ~/.zshrc

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

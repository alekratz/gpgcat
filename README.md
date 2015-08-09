# gpgcat
This is me trying to make a cat-like GPG thing. It mostly handles the for loops needed to do something like this, it's not expected to be so crazy to use.

I recommend you have a key agent enabled, so you aren't asked a million times in a row to enter your key if you are decrypting something.

# Installing
## for the lazy bash users
`curl https://raw.githubusercontent.com/alekratz/gpgcat/master/gpgcat.sh | grep '^[^#]' >> ~/.bashrc`
## for the lazy zsh users
`curl https://raw.githubusercontent.com/alekratz/gpgcat/master/gpgcat.sh | grep '^[^#] >> ~/.zshrc`

Don't forget to go in and change "YOUR_KEY_ID" to your key ID.

# License
BSD 3-clause license
# Lotza Dotz

My dotfiles in all their wonderful glory...or are they? Hmmm? You got this!!!

## I am not TOO Fancy

So, here's what I need to do to setup a new 'puter for the coding.

### SSH Keys

Oh yeah, start here. Cause GH wants one to clone down this repo. As good as any: https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

I put shit in `~/Sites` at this point. But dotfiles aren't "sites" Alex? Go shut up and drink a beer...while I clone down this repo into that directory.

### Homebrew

Beer you say? Well this ain't as fun, but we gotta use it. I mean, it is fun. Yay! https://brew.sh/

### Zsh

Why's your terminal still look like Capser the Friendly Ghost, bro? Time for a change. This man's no Casper...
https://sourabhbajaj.com/mac-setup/iTerm/zsh.html

You better remember you have a Zprezto config file in this repo so choose that over "Oh My Zsh"...no wait, just choose it cause the name sucks so much less hyenas' assholes. 

But only do the first line of cloning the stuff. I would copy it over here, but that dude is more likely to update his words when things change than I am.

```bash
cp ./.zshrc ~/
cp ./.zpreztorc ~/
```

You'll need to set the shell in the terminal prompt's preferences. Also, you'll need to set "Homebrew" as the defualt theme. Conspiracy?

### PhpStorm

The included JAR file in this repo is enough to get that damn annoying termnial bar to behave. I'll tell you that much so far...

### Node

The Node project keeps changing how it wants you to install itself. Currently, you just download it from https://nodejs.org/en/. Don't try to install it via the Homebrew.

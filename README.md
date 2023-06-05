# settings

## 1. Mac

### コンピュータ名 (host名) の変更

- 確認: `$ uname -n`
- 変更: システム環境設定 > 一般 > 情報

ref: [Mac - コンピュータ名（ホスト名）を確認・変更する方法](https://pc-karuma.net/mac-computer-name/)

### ライブ変換の解除
- システム環境設定 > キーボード > テキスト入力 > 編集
- すべての入力ソース 
- 日本語

## 2. Install

```bash
zsh -c "$(curl https://raw.githubusercontent.com/tarrows/settings/master/install.sh)"
```


(TODO: Add following steps to install.sh?)
```
==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh
```

- check if installed: `$ brew -v`
- deploy dotfiles:
```bash
cp ~/settings/.zshrc
cp ~/settings/.vimrc ~/.vimrc
cp ~/settings/.gvimrc ~/.gvimrc
```

### homebrew

- install brew bundle

```bash
brew tap Homebrew/bundle
```

- install from Brewfile

```
brew bundle install --file=~/settings/Brewfile
```

### Others
- nvm `$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
- [rust](https://www.rust-lang.org/tools/install) `$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

## iTerm2

### iTerm2 → Settings → Profiles → Colors
- Download Color Scheme
- Color Presets… > Import... > Japanesque.itermcolors
- Color Presets… > Japanesque

### iTerm2 → Settings → Profiles → Window
- Transparency: 20
- Screen: Screen with Cursor
- Space: All Spaces

### iTerm2 → Settings → Profiles → Terminal
- Scrollback lines: 20,000

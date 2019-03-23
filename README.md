# dotfiles
cafeclimber's dotfiles
Management method from: https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html

### Setup
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/cafeclimber/.dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
```

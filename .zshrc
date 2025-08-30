export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=arrow
source /usr/share/oh-my-zsh/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
# eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/powerline.omp.json)"
alias ls="eza -a --icons"
alias yain="yay -S"
alias yeet="yay -R"
alias gco="git checkout"
alias btm="btm --basic --process_memory_as_value"
  

config() {
  case $1 in
    kitty)
      cd ~/.config/kitty
      hx ~/.config/kitty
      ;;
    eww)
      cd ~/.config/eww
      hx ~/.config/eww/eww.yuck
      ;;
  esac
}
export EDITOR="helix"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sr/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sr/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sr/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sr/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Option 1: Disable auto-activation of base environment
conda config --set auto_activate_base false

# Option 2: Manually deactivate the base environment
# conda deactivate

export env WARP_ENABLE_WAYLAND=1
alias cls='clear'
export PATH="$HOME/.local/bin:$PATH"

export PATH="$PATH:/home/sr/.npm-global/bin"


# Load Angular CLI autocompletion.
source <(ng completion script)
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export OPENAI_API_BASE=http://localhost:11434

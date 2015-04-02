autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' max-exports 6 # formatに入る変数の最大数
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%b@%r' '%c' '%u'
zstyle ':vcs_info:git:*' actionformats '%b@%r|%a' '%c' '%u'
setopt prompt_subst
function vcs_echo {
    local st vcs_info branch git_status git_project branch_name
    STY= LANG=en_US.UTF-8 vcs_info
    st=`git status 2> /dev/null`
    if [[ -z "$st" ]]; then return; fi
    vcs_info="$vcs_info_msg_0_"
    git_status=""

    if [[ -n "$vcs_info_msg_1_" ]]; then git_status="$git_status#" fi #staged
    if [[ -n "$vcs_info_msg_2_" ]]; then git_status="$git_status*" fi #unstaged
    if [[ -n `echo "$st" | grep "^Untracked"` ]]; then git_status="$git_status+" fi # untracked

    if [[ -n "$git_status" ]]; then git_status="%F{red}$git_status%f " fi

    branch="%F{cyan}${vcs_info%@*}%f"
    project="%F{cyan}${vcs_info#*@}%f"

    echo "%F{cyan}(%f $git_status$branch %F{yellow}@%f $project %F{cyan})%f"
}

PROMPT='%F{yellow}[%~]%f$ '
RPROMPT='`vcs_echo`'

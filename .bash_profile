#  ---------------------------------------------------------------------------
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  ---------------------------------------------------------------------------
 
#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------
 
#   Change Prompt
#   ------------------------------------------------------------
    export PS1="\w @ \h(\u): "
 
#   -----------------------------
#   2.  ALIASES
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias ls='ls -Gp'                           # Preferred ‘ls’ implementation
alias ll='ls -Glp'                          #
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias la='ls -FGlAhp'                       #

alias bashc='vim ~/.bash_profile'
alias bashr='source ~/.bash_profile'

# Rename spaces recursively
alias rspace='find . -name "* *" -exec rename "s/ /_/g" {} +'

#   -------------------------------
#   3. FILE AND FOLDER MANAGEMENT
#   -------------------------------

zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir

#   ---------------------------
#   4. SEARCHING
#   ---------------------------

ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   ---------------------------
#   5. MISCELLANEOUS 
#   ---------------------------

# Include other files
# Machine specific aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Git rc
if [ -f ~/.gitrc ]; then
    . ~/.gitrc
fi

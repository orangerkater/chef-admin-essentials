default.admin_essentials.additional_packages = []
default.admin_essentials.default_packages = %w(
  mc
  htop
  strace
  screen
  inotify-tools
  debconf-utils
  rlwrap
  multitail
  git-core
  vim
  zsh
  lsof
  less
  bc
  dc
  psmisc
  tcpdump
  moreutils
  tree
  sudo
  dnsutils
  curl
)

default.admin_essentials.all_packages =
  default.admin_essentials.default_packages +
  default.admin_essentials.additional_packages

# users to set admin preferences for (apart from root)
default.admin_essentials.admin_users = []
default.admin_essentials.admin_groups = []

# $EDITOR to set for admins, defaults to current $EDITOR (unless empty)
default.admin_essentials.editor =
  (ENV['EDITOR'].nil? || ENV['EDITOR'].empty?) ? 'emacs' : ENV['EDITOR']

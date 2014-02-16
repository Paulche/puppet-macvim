# Public: Install Macvim.
# On Mac OS X, MacVim can't build without a full Xcode install.
#
# Examples
#
#   include macvim
class macvim {
  package { 'macvim':
    ensure          => present,
    install_options => [
      '--with-cscope',
      '--override-system-vim',
    ],
    require         => Package['python'],
  }

  ensure_packages(['python'])
}

project('mkinitramfs', 'c', version: '20260515')

PREFIX = get_option('prefix')
SYSCONFDIR = join_paths(PREFIX, get_option('sysconfdir'))
BINDIR = join_paths(PREFIX, get_option('bindir'))
DATA_DIR = join_paths(PREFIX, get_option('data-dir'))
HOOKS_DIR = join_paths(DATA_DIR, 'hooks')

conf_data = configuration_data()
conf_data.set('SYSCONFDIR', SYSCONFDIR)
conf_data.set('DATA_DIR', DATA_DIR)
conf_data.set('HOOKS_DIR', HOOKS_DIR)

subdir('data')
subdir('hooks')
subdir('man')
subdir('src')

install_data('init.in', install_dir: DATA_DIR, install_mode: 'rw-r--r--')

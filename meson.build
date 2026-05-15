project('mkinitramfs', 'c', version: '20260515')

PREFIX = get_option('prefix')
SYSCONFDIR = join_paths(PREFIX, get_option('sysconfdir'))
BINDIR = join_paths(PREFIX, get_option('bindir'))
DATA_DIR = join_paths(PREFIX, get_option('data_dir'))
HOOKS_DIR = join_paths(DATA_DIR, get_option('hooks_dir'))

conf_data = configuration_data()
conf_data.set('SYSCONFDIR', SYSCONFDIR)
conf_data.set('DATA_DIR', DATA_DIR)
conf_data.set('HOOKS_DIR', HOOKS_DIR)

subdir('data')
subdir('hooks')
subdir('src')

install_data('init.in', install_dir: DATA_DIR, install_mode: 'rw-r--r--')

install_emptydir(
    SYSCONFDIR / 'mkinitramfs.d',
    install_mode: 'rwxr-xr-x'
)

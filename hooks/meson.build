hooks = [
    'automod',
    'base',
    'encrypt',
    'modules',
    'udev'
]

foreach h: hooks
    install_data('@0@.hook'.format(h), install_dir: HOOKS_DIR, install_mode: 'rw-r--r--')
endforeach

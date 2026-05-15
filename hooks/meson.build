hooks = [
    'automod.hook',
    'base.hook',
    'encrypt.hook',
    'modules.hook',
    'udev.hook'
]

foreach h: hooks
    install_data(h, install_dir: HOOKS_DIR, install_mode: 'rw-r--r--')
endforeach

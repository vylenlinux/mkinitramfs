files = [
    'lsmkinitramfs.1',
    'mkinitramfs.8',
    'mkinitramfs.conf.5'
]

if get_option('man')
    foreach file: files
        section = file.split('.')[-1]
        install_data(file, install_dir: join_paths(get_option('mandir'), 'man' + section))
    endforeach
endif

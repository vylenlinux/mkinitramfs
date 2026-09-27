if get_option('man')
    man_names = [
        'lsmkinitramfs.1',
        'mkinitramfs.8',
        'mkinitramfs.conf.5'
    ]

    man_files = []

    foreach man_name: man_names
        man_files += configure_file(
            input: '@0@.in'.format(man_name),
            output: man_name,
            configuration: conf_data
        )
    endforeach

    install_man(man_files)
endif

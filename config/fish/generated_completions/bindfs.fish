# bindfs
# Autogenerated from man page /usr/local/share/man/man1/bindfs.1
# using Deroffing man parser
complete -c bindfs -s u -l force-user -s o --description 'Makes all files owned by the specified user.'
complete -c bindfs -s g -l force-group --description 'Makes all files owned by the specified group.'
complete -c bindfs -s p -l perms --description 'Takes a comma- or colon-separated list of chmod… [See Man Page]'
complete -c bindfs -s m -l mirror --description 'Takes a comma- or colon-separated list of users… [See Man Page]'
complete -c bindfs -s M -l mirror-only --description 'Like --mirror but disallows access for all othe… [See Man Page]'
complete -c bindfs -l map --description 'Given a mapping user1/user2, all files owned by… [See Man Page]'
complete -c bindfs -l 'create-for-*' -l 'chown-*' -l 'chgrp-*' --description 'the corresponding behavior of this option.'
complete -c bindfs -l create-as-user --description 'Tries to change the owner and group of new file… [See Man Page]'
complete -c bindfs -l create-as-mounter --description 'All new files and directories will be owned by the mounter.'
complete -c bindfs -l create-for-user --description 'Tries to change the owner of new files and dire… [See Man Page]'
complete -c bindfs -l create-for-group --description 'Tries to change the owning group of new files a… [See Man Page]'
complete -c bindfs -l create-with-perms --description 'Works like --perms but is applied to the permis… [See Man Page]'
complete -c bindfs -l chown-normal --description 'Tries to chown the underlying file.  This is the default.'
complete -c bindfs -l chown-ignore --description 'Lets chown succeed (if the user has enough mirr… [See Man Page]'
complete -c bindfs -l chown-deny --description 'Makes chown always fail with a \'permission denied\' error.'
complete -c bindfs -l chgrp-normal --description 'Tries to chgrp the underlying file.  This is the default.'
complete -c bindfs -l chgrp-ignore --description 'Lets chgrp succeed (if the user has enough mirr… [See Man Page]'
complete -c bindfs -l chgrp-deny --description 'Makes chgrp always fail with a \'permission denied\' error.'
complete -c bindfs -l chmod-normal --description 'Tries to chmod the underlying file.'
complete -c bindfs -l chmod-ignore --description 'Lets chmod succeed (if the user has enough mirr… [See Man Page]'
complete -c bindfs -l chmod-deny --description 'Makes chmod always fail with a \'permission denied\' error.'
complete -c bindfs -l chmod-filter --description 'Changes the permission bits of a chmod request … [See Man Page]'
complete -c bindfs -l chmod-allow-x --description 'Allows setting and clearing the executable attr… [See Man Page]'
complete -c bindfs -l xattr-none --description 'Disable extended attributes altogether.'
complete -c bindfs -l xattr-ro --description 'Let extended attributes be read-only.'
complete -c bindfs -l xattr-rw --description 'Let extended attributes be read-write (the default).'
complete -c bindfs -l read-rate --description 'Allow at most N bytes per second to be read.'
complete -c bindfs -l write-rate --description 'Same as above, but for writes.'
complete -c bindfs -s h -l help --description 'Displays a help message and exits.'
complete -c bindfs -s V -l version --description 'Displays version information and exits.'
complete -c bindfs -s n -l no-allow-other --description 'Does not add -o allow_other to FUSE options.'
complete -c bindfs -l realistic-permissions --description 'Hides read/write/execute permissions for a mirr… [See Man Page]'
complete -c bindfs -l ctime-from-mtime --description 'Recall that a unix file has three standard time… [See Man Page]'
complete -c bindfs -l hide-hard-links --description 'Shows the hard link count of all files as 1.'
complete -c bindfs -l multithreaded --description 'Run bindfs in multithreaded mode.'
complete -c bindfs -s r --description 'Make the mount strictly read-only.'
complete -c bindfs -s d --description 'Enable debug output (implies -f).'
complete -c bindfs -s f --description 'Foreground operation.'


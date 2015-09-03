# pg_restore
# Autogenerated from man page /usr/local/share/man/man1/pg_restore.1
# using Deroffing man parser
complete -c pg_restore -o 'a
.br
--data-only' --description 'Restore only the data, not the schema (data definitions).'
complete -c pg_restore -o 'c
.br
--clean' --description 'Clean (drop) database objects before recreating them.'
complete -c pg_restore -o 'C
.br
--create' --description 'Create the database before restoring into it.'
complete -c pg_restore -s d --description 'Connect to database dbname and restore directly… [See Man Page]'
complete -c pg_restore -o 'e
.br
--exit-on-error' --description 'Exit if an error is encountered while sending S… [See Man Page]'
complete -c pg_restore -s f --description 'Specify output file for generated script, or fo… [See Man Page]'
complete -c pg_restore -o 'i
.br
--ignore-version' --description 'A deprecated option that is now ignored.'
complete -c pg_restore -s I --description 'Restore definition of named index only.'
complete -c pg_restore -s j --description 'Run the most time-consuming parts of pg_restore… [See Man Page]'
complete -c pg_restore -o 'l
.br
--list' --description 'List the contents of the archive.'
complete -c pg_restore -s L --description 'Restore only those archive elements that are li… [See Man Page]'
complete -c pg_restore -s n --description 'Restore only objects that are in the named schema.'
complete -c pg_restore -o 'O
.br
--no-owner' --description 'Do not output commands to set ownership of obje… [See Man Page]'
complete -c pg_restore -s P --description 'Restore the named function only.'
complete -c pg_restore -o 'R
.br
--no-reconnect' --description 'This option is obsolete but still accepted for … [See Man Page]'
complete -c pg_restore -o 's
.br
--schema-only' --description 'Restore only the schema (data definitions), not… [See Man Page]'
complete -c pg_restore -s S --description 'Specify the superuser user name to use when disabling triggers.'
complete -c pg_restore -s t --description 'Restore definition and/or data of named table only.'
complete -c pg_restore -s T --description 'Restore named trigger only.'
complete -c pg_restore -o 'v
.br
--verbose' --description 'Specifies verbose mode.'
complete -c pg_restore -o 'V
.br
--version' --description 'Print the pg_restore version and exit.'
complete -c pg_restore -o 'x
.br
--no-privileges
.br
--no-acl' --description 'Prevent restoration of access privileges (grant… [See Man Page]'
complete -c pg_restore -o '1
.br
--single-transaction' --description 'Execute the restore as a single transaction (th… [See Man Page]'
complete -c pg_restore -l disable-triggers --description 'This option is relevant only when performing a … [See Man Page]'
complete -c pg_restore -l if-exists --description 'Use conditional commands (i. e.'
complete -c pg_restore -l no-data-for-failed-tables --description 'By default, table data is restored even if the … [See Man Page]'
complete -c pg_restore -l no-security-labels --description 'Do not output commands to restore security labe… [See Man Page]'
complete -c pg_restore -l no-tablespaces --description 'Do not output commands to select tablespaces.'
complete -c pg_restore -l section --description 'Only restore the named section.'
complete -c pg_restore -l use-set-session-authorization --description 'Output SQL-standard SET SESSION AUTHORIZATION c… [See Man Page]'
complete -c pg_restore -o '?
.br
--help' --description 'Show help about pg_restore command line arguments, and exit.'
complete -c pg_restore -s h --description 'Specifies the host name of the machine on which… [See Man Page]'
complete -c pg_restore -s p --description 'Specifies the TCP port or local Unix domain soc… [See Man Page]'
complete -c pg_restore -s U --description 'User name to connect as.'
complete -c pg_restore -o 'w
.br
--no-password' --description 'Never issue a password prompt.'
complete -c pg_restore -o 'W
.br
--password' --description 'Force pg_restore to prompt for a password befor… [See Man Page]'
complete -c pg_restore -l role --description 'Specifies a role name to be used to perform the restore.'
complete -c pg_restore -s a --description '.'
complete -c pg_restore -l data-only --description '.'
complete -c pg_restore -s c --description '.'
complete -c pg_restore -l clean --description '.'
complete -c pg_restore -s C --description '.'
complete -c pg_restore -l create --description '.'
complete -c pg_restore -l dbname --description '.'
complete -c pg_restore -s e --description '.'
complete -c pg_restore -l exit-on-error --description '.'
complete -c pg_restore -l file --description '.'
complete -c pg_restore -o 'l.' --description '.'
complete -c pg_restore -s F --description '.'
complete -c pg_restore -l format --description '.'
complete -c pg_restore -s i --description '.'
complete -c pg_restore -l ignore-version --description '.'
complete -c pg_restore -l index --description '.'
complete -c pg_restore -l jobs --description '.'
complete -c pg_restore -l 'single-transaction.' --description '.'
complete -c pg_restore -s l --description '.'
complete -c pg_restore -l list --description '.'
complete -c pg_restore -l use-list --description '.'
complete -c pg_restore -l schema --description '.'
complete -c pg_restore -s O --description '.'
complete -c pg_restore -l no-owner --description '.'
complete -c pg_restore -l function --description '.'
complete -c pg_restore -s R --description '.'
complete -c pg_restore -l no-reconnect --description '.'
complete -c pg_restore -s s --description '.'
complete -c pg_restore -l schema-only --description '.'
complete -c pg_restore -l 'data-only.' --description '.'
complete -c pg_restore -l superuser --description '.'
complete -c pg_restore -l table --description '.'
complete -c pg_restore -l trigger --description '.'
complete -c pg_restore -s v --description '.'
complete -c pg_restore -l verbose --description '.'
complete -c pg_restore -s V --description '.'
complete -c pg_restore -l version --description '.'
complete -c pg_restore -s x --description '.'
complete -c pg_restore -l no-privileges --description '.'
complete -c pg_restore -l no-acl --description '.'
complete -c pg_restore -s 1 --description '.'
complete -c pg_restore -l single-transaction --description '.'
complete -c pg_restore -l 'exit-on-error.' --description '.'
complete -c pg_restore -s '?' --description '.'
complete -c pg_restore -l help --description '.'
complete -c pg_restore -l host --description '.'
complete -c pg_restore -l port --description '.'
complete -c pg_restore -l username --description '.'
complete -c pg_restore -s w --description '.'
complete -c pg_restore -l no-password --description '.'
complete -c pg_restore -s W --description '.'
complete -c pg_restore -l password --description '.'
complete -c pg_restore -o 'U)' --description 'pg_restore, but can switch to a role with the required rights.'


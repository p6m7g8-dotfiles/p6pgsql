# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_pgsql_cli()
#
#>
######################################################################
p6_pgsql_cli() {
    local user="$1"
    local host="$2"
    local db="$3"
    shift 3

    psql -X -q -w -P pager=off -h "$host" -U "$user" -d "$db" "$@"

    p6_return_void
}

######################################################################
#<
#
# Function: stream  = p6_pgsql_cli_sql_run_from_file(user, host, db, cmd)
#
#  Args:
#	user -
#	host -
#	db -
#	cmd -
#
#  Returns:
#	stream -
#
#>
######################################################################
p6_pgsql_cli_sql_run_from_file() {
    local user="$1"
    local host="$2"
    local db="$3"
    local file="$4"

    p6_pgsql_cli "$user" "$host" "$db" -f "$file"

    p6_return_stream
}

######################################################################
#<
#
# Function: stream  = p6_pgsql_cli_sql_run_cmd(user, host, db, cmd)
#
#  Args:
#	user -
#	host -
#	db -
#	cmd -
#
#  Returns:
#	stream -
#
#>
######################################################################
p6_pgsql_cli_sql_run_cmd() {
    local user="$1"
    local host="$2"
    local db="$3"
    local cmd="$4"

    p6_pgsql_cli "$user" "$host" "$db" -c "$cmd"

    p6_return_stream
}

######################################################################
#<
#
# Function: stream  = p6_pgsql_filter_sql_run(user, host, db)
#
#  Args:
#	user -
#	host -
#	db -
#
#  Returns:
#	stream -
#
#>
######################################################################
p6_pgsql_filter_sql_run() {
    local user="$1"
    local host="$2"
    local db="$3"

    p6_pgsql_cli "$user" "$host" "$db"

    p6_return_stream
}

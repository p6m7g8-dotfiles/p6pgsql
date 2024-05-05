# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_pgsql_db_create()
#
#>
######################################################################
p6_pgsql_db_create() {
    local user="$1"
    local host="$2"
    local db="$3"

    p6_pgsql_cli_sql_run_cmd "$user" "$host" "postgres" "create role $db with createdb login superuser"
    p6_pgsql_cli_sql_run_cmd "$user" "$host" "postgres" "create database $db"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_pgsql_db_drop(user, host, db)
#
#  Args:
#	user -
#	host -
#	db -
#
#>
######################################################################
p6_pgsql_db_drop() {
    local user="$1"
    local host="$2"
    local db="$3"

    p6_pgsql_cli_sql_run_cmd "$user" "$host" "postgres" "drop database $db"
    p6_pgsql_cli_sql_run_cmd "$user" "$host" "postgres" "drop role $db"

    p6_return_void
}

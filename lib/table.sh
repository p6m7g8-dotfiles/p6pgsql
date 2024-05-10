# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_pgsql_filter_pipe_to_table()
#
#  Environment:	 INSERT
#>
######################################################################
p6_pgsql_filter_pipe_to_table() {
    local user="$1"
    local host="$2"
    local db="$3"
    local table="$4"
    local column_list="$5"
    local sep="${6:-|}"

    local line
    while read -r line; do
        if ! p6_string_blank "$line"; then
            local values=$(p6_echo "$line" | p6_filter_translate_blank_to_null | p6_filter_sql_escape_single_quote | p6_filter_translate_words_to_sql_list "$sep")
            p6_echo "INSERT INTO $table ($column_list) VALUES $values;"
        fi
    done |
        p6_pgsql_filter_sql_run "$user" "$host" "$db"

    p6_return_void
}

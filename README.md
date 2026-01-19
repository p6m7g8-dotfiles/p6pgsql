# P6's POSIX.2: p6pgsql

## Table of Contents

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

## Contributing

- [How to Contribute](<https://github.com//.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com//.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

### Functions

## p6pgsql

### p6pgsql/init.zsh

- p6df::modules::p6pgsql::deps()
- p6df::modules::p6pgsql::init(_module, dir)

## p6pgsql/lib

### p6pgsql/lib/cli.sh

- p6_pgsql_cli()
- stream  = p6_pgsql_cli_sql_run_cmd(user, host, db, cmd)
- stream  = p6_pgsql_cli_sql_run_from_file(user, host, db, file)
- stream  = p6_pgsql_filter_sql_run(user, host, db)

### p6pgsql/lib/db.sh

- p6_pgsql_db_create()
- p6_pgsql_db_drop(user, host, db)

### p6pgsql/lib/table.sh

- p6_pgsql_filter_pipe_to_table()

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cli.sh
│   ├── db.sh
│   └── table.sh
└── README.md

2 directories, 5 files
```

## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>

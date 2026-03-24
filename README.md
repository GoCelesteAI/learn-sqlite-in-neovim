# Learn SQLite in Neovim

Student code for the **Learn SQLite in Neovim** YouTube series by [CelesteAI](https://www.youtube.com/@CelesteAI).

32 episodes from beginner to advanced — learn SQL while coding in Neovim.

## Episodes

| Episode | Topic | Code |
|---------|-------|------|
| 1 | Hello SQLite | [episode01/intro.sql](episode01/intro.sql) |
| 2 | Inserting Data | [episode02/inserting.sql](episode02/inserting.sql) |

## How to Run

```bash
# Run a SQL file against an in-memory database
sqlite3 :memory: < episode01/intro.sql

# Or from within Neovim
:!sqlite3 :memory: < %
```

## Prerequisites

- [SQLite](https://sqlite.org/) (pre-installed on macOS and most Linux)
- [Neovim](https://neovim.io/) (recommended, any text editor works)

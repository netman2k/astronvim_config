# Neovim Shortcuts

Leader key: `<Space>` (`<Leader>`). Local leader: `,`.

Shortcuts marked with a dagger (†) only work when the required tool is installed or the situation applies (for example, a Python project for uv, or a tmux session for pane navigation).

---

## Your Custom Mappings

| Key | Mode | Action | Defined in |
|-----|------|--------|------------|
| `]b` | n | Next buffer | `plugins/astrocore.lua` |
| `[b` | n | Previous buffer | `plugins/astrocore.lua` |
| `<Leader>bd` | n | Close buffer from tabline (pick one) | `plugins/astrocore.lua` |
| `<Leader>sad` | n | Search API docs (`ApidocsOpen`) | `plugins/apidocs.lua` |
| `<Leader>jp` | n | Show JSON path (JSON files) | `plugins/jsonpath.lua` |
| `<Leader>jy` | n | Yank JSON path to system clipboard (JSON files) | `plugins/jsonpath.lua` |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | n | Move between splits, or tmux panes at the edge † | `vim-tmux-navigator` |
| `<C-\>` | n | Move to previous split or tmux pane † | `vim-tmux-navigator` |
| `jk` / `jj` | i | Escape to Normal mode | `better-escape.nvim` (AstroNvim default) |

---

## General

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>w` | n | Save |
| `<C-s>` | n, x | Force save |
| `<Leader>q` | n | Quit window |
| `<Leader>Q` | n | Quit AstroNvim (all) |
| `<C-q>` | n | Force quit |
| `<Leader>n` | n | New file |
| `<Leader>R` | n | Rename file |
| `<Leader>h` | n | Home screen (dashboard) |
| `<Leader>/` | n, x | Toggle comment (line / selection) |
| `gco` / `gcO` | n | Add comment below / above |
| `j` / `k` | n, x | Move by display line (respects wrap) |
| `|` | n | Vertical split |
| `\` | n | Horizontal split |
| `<C-Up>` / `<C-Down>` | n | Resize split height |
| `<C-Left>` / `<C-Right>` | n | Resize split width |
| `<Tab>` / `<S-Tab>` | v | Indent / unindent and keep selection |
| `<C-BS>` | n | Clear multicursors (Neovim 0.13+) |
| `<Leader>e` | n | Toggle file explorer (Neo-tree) |
| `<Leader>o` | n | Toggle explorer focus |
| `<F7>` | n, i, t | Toggle terminal |

### Buffers

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>c` | n | Close buffer |
| `<Leader>C` | n | Force close buffer |
| `<Leader>bb` | n | Buffer picker |
| `<Leader>bc` | n | Close all except current |
| `<Leader>bC` | n | Close all buffers |
| `<Leader>bl` | n | Close buffers to the left |
| `<Leader>br` | n | Close buffers to the right |
| `<Leader>bp` | n | Previous buffer |
| `>b` / `<b` | n | Move buffer tab right / left |
| `<Leader>bs` | n | Sort buffers menu: `bse` extension, `bsr` relative path, `bsp` full path, `bsi` buffer number, `bsm` modification |
| `<Leader>b\` | n | Buffer horizontal split (from picker) |
| `<Leader>b\|` | n | Buffer vertical split (from picker) |

### Tabs

| Key | Mode | Action |
|-----|------|--------|
| `]t` | n | Next tab |
| `[t` | n | Previous tab |

### Diagnostics

| Key | Mode | Action |
|-----|------|--------|
| `[e` / `]e` | n | Previous / next error |
| `[w` / `]w` | n | Previous / next warning |
| `<Leader>ld` | n | Show diagnostics under cursor |
| `gl` | n | Show diagnostics under cursor |
| `<Leader>lD` | n | Search diagnostics (picker) |
| `<Leader>lw` | n | Workspace diagnostics |

### Quickfix and Location Lists

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>xq` | n | Open quickfix list |
| `<Leader>xl` | n | Open location list |

### TODO Comments

| Key | Mode | Action |
|-----|------|--------|
| `]T` | n | Next TODO comment |
| `[T` | n | Previous TODO comment |
| `<Leader>fT` | n | Find TODO comments |

### Symbols and References

| Key | Mode | Action |
|-----|------|--------|
| `]r` | n | Next reference under cursor |
| `[r` | n | Previous reference under cursor |
| `<Leader>ur` | n | Toggle reference highlighting |
| `<Leader>lS` | n | Symbols outline (Aerial) |
| `]y` / `[y` | n | Next / previous symbol (Aerial) |
| `]Y` | n | Next symbol upwards (Aerial) |

---

## Find (Picker, `<Leader>f`)

| Key | Action |
|-----|--------|
| `<Leader>ff` | Find files |
| `<Leader>fF` | Find all files (hidden and ignored) |
| `<Leader>fg` | Find git files |
| `<Leader>fs` | Find buffers, recent files, and files |
| `<Leader>fo` | Find old files (recent) |
| `<Leader>fO` | Find old files (current directory) |
| `<Leader>fb` | Find buffers |
| `<Leader>fw` | Find words (grep) † |
| `<Leader>fW` | Find words in all files † |
| `<Leader>fc` | Find word under cursor |
| `<Leader>fl` | Find lines |
| `<Leader>fa` | Find AstroNvim config files |
| `<Leader>fp` | Find projects |
| `<Leader>fh` | Find help |
| `<Leader>fk` | Find keymaps |
| `<Leader>fC` | Find commands |
| `<Leader>fm` | Find man pages |
| `<Leader>fr` | Find registers |
| `<Leader>f'` | Find marks |
| `<Leader>fn` | Find notifications |
| `<Leader>ft` | Find colorschemes |
| `<Leader>fu` | Find undo history |
| `<Leader>f<CR>` | Resume previous search |

---

## Git (`<Leader>g`)

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>gb` | n | Git branches |
| `<Leader>gc` | n | Git commits (repository) |
| `<Leader>gC` | n | Git commits (current file) |
| `<Leader>gt` | n | Git status |
| `<Leader>gT` | n | Git stash |
| `<Leader>go` | n, x | Open in browser (GitHub, etc.) |
| `<Leader>gg` | n | Open lazygit † |
| `<Leader>gnt` | n | Open Neogit (tab page) |
| `<Leader>gnc` | n | Neogit commit page |
| `<Leader>gnd` | n | Neogit with custom cwd (prompts) |
| `<Leader>gnk` | n | Neogit with custom kind (prompts) |
| `<Leader>gnf` | n | Neogit floating window |
| `<Leader>gnh` | n | Neogit horizontal split |
| `<Leader>gnv` | n | Neogit vertical split |
| `[g` / `]g` | n | Previous / next git hunk |
| `[G` / `]G` | n | First / last git hunk |

---

## Language Tools / LSP (`<Leader>l`)

| Key | Mode | Action |
|-----|------|--------|
| `gd` | n | Go to definition |
| `gD` | n | Go to declaration |
| `gI` | n | Go to implementation |
| `gy` | n | Go to type definition |
| `gK` | n | Signature help |
| `<Leader>la` | n, x | Code action |
| `<Leader>lA` | n | Source action |
| `<Leader>lr` | n | Rename symbol |
| `<Leader>lR` | n | Find references |
| `<Leader>lh` | n | Signature help |
| `<Leader>lf` | n, v | Format buffer |
| `<Leader>li` | n | LSP info (`:checkhealth vim.lsp`) |
| `<Leader>lG` | n | Workspace symbols |
| `<Leader>ls` | n | Search symbols |
| `<Leader>ll` | n | CodeLens refresh |
| `<Leader>lL` | n | CodeLens run |
| `<Leader>lI` | n | None-ls info |

---

## UI Toggles (`<Leader>u`)

| Key | Action |
|-----|--------|
| `<Leader>ua` | Toggle autopairs |
| `<Leader>uA` | Toggle rooter autochdir |
| `<Leader>ub` | Toggle background |
| `<Leader>uc` | Toggle autocompletion (buffer) |
| `<Leader>uC` | Toggle autocompletion (global) |
| `<Leader>ud` | Toggle diagnostics |
| `<Leader>ug` | Toggle signcolumn |
| `<Leader>uh` | Toggle LSP inlay hints (buffer) |
| `<Leader>uH` | Toggle LSP inlay hints (global) |
| `<Leader>ui` | Change indent setting |
| `<Leader>ul` | Toggle statusline |
| `<Leader>un` | Change line numbering |
| `<Leader>uN` | Toggle notifications |
| `<Leader>uD` | Dismiss notifications |
| `<Leader>up` | Toggle paste mode |
| `<Leader>us` | Toggle spellcheck |
| `<Leader>uS` | Toggle conceal |
| `<Leader>ut` | Toggle tabline |
| `<Leader>uu` | Toggle URL highlight |
| `<Leader>uv` | Toggle virtual text |
| `<Leader>uV` | Toggle virtual lines |
| `<Leader>uw` | Toggle wrap |
| `<Leader>uy` | Toggle syntax highlight (buffer) |
| `<Leader>uY` | Toggle LSP semantic highlight (buffer) |
| `<Leader>uz` | Toggle color highlight |
| `<Leader>u\|` | Toggle indent guides |
| `<Leader>uZ` | Toggle zen mode |
| `<Leader>u>` | Toggle foldcolumn |
| `<Leader>u?` | Toggle automatic signature help |
| `<Leader>uf` | Toggle autoformatting (buffer) |
| `<Leader>uF` | Toggle autoformatting (global) |
| `<Leader>uL` | Toggle CodeLens |

---

## Plugin Manager (`<Leader>p`)

| Key | Action |
|-----|--------|
| `<Leader>pi` | Install plugins |
| `<Leader>ps` | Plugin status |
| `<Leader>pS` | Sync plugins |
| `<Leader>pu` | Check for updates |
| `<Leader>pU` | Update plugins |
| `<Leader>pa` | Update Lazy and Mason |
| `<Leader>pm` | Mason installer |
| `<Leader>pM` | Mason update |

---

## Sessions (`<Leader>S`, Resession)

| Key | Action |
|-----|--------|
| `<Leader>Sl` | Load last session |
| `<Leader>Ss` | Save session |
| `<Leader>SS` | Save session (prompt) |
| `<Leader>St` | Save tab session |
| `<Leader>Sd` | Delete session |
| `<Leader>SD` | Delete session (prompt) |
| `<Leader>Sf` | Load session |
| `<Leader>SF` | Load session (prompt) |
| `<Leader>S.` | Load session for current directory |

---

## Terminal (`<Leader>t`, ToggleTerm)

| Key | Mode | Action |
|-----|------|--------|
| `<C-'>` | n, i, t | Toggle terminal (needs a terminal that can bind `<C-'>`) |
| `<Leader>tf` | n | Float terminal |
| `<Leader>th` | n | Horizontal terminal |
| `<Leader>tv` | n | Vertical terminal (80 columns) |
| `<Leader>tl` | n | Lazygit † |
| `<Leader>tu` | n | gdu (disk usage) † |
| `<Leader>tt` | n | btm (float) † |
| `<Leader>tp` | n | Python REPL † |
| `<Leader>tn` | n | Node REPL † |

---

## Debugger (`<Leader>d`, DAP)

### Function Keys

| Key | Action |
|-----|--------|
| `<F5>` | Start / continue |
| `<S-F5>` (`<F17>`) | Stop |
| `<C-F5>` (`<F29>`) | Restart frame |
| `<F6>` | Pause |
| `<F9>` | Toggle breakpoint |
| `<S-F9>` (`<F21>`) | Conditional breakpoint |
| `<F10>` | Step over |
| `<F11>` | Step into |
| `<S-F11>` (`<F23>`) | Step out |

### Leader Keys

| Key | Action |
|-----|--------|
| `<Leader>db` | Toggle breakpoint |
| `<Leader>dB` | Clear all breakpoints |
| `<Leader>dC` | Conditional breakpoint |
| `<Leader>dc` | Start / continue |
| `<Leader>di` | Step into |
| `<Leader>do` | Step over |
| `<Leader>dO` | Step out |
| `<Leader>dp` | Pause |
| `<Leader>dr` | Restart frame |
| `<Leader>ds` | Run to cursor |
| `<Leader>dq` | Close session |
| `<Leader>dQ` | Terminate session |
| `<Leader>dR` | Toggle REPL |
| `<Leader>du` | Toggle debugger UI |
| `<Leader>dh` | Debugger hover |
| `<Leader>dE` | Evaluate input (normal mode prompts for an expression) |
| `<Leader>dE` | Evaluate selection (visual mode) |

---

## Python (uv, `<Leader>x`)

These run in Python projects with `uv` installed.

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>x` | n | UV commands picker |
| `<Leader>xr` | n | Run current file |
| `<Leader>xs` | v | Run selection |
| `<Leader>xf` | n | Run function |
| `<Leader>xe` | n | UV environment picker |
| `<Leader>xi` | n | Init UV project |
| `<Leader>xa` | n | Add package (prompts) |
| `<Leader>xd` | n | Remove package (prompts) |
| `<Leader>xc` | n | Sync packages |
| `<Leader>xC` | n | Sync all extras, groups, and packages |

> Note: `<Leader>xq` and `<Leader>xl` (quickfix and location list) share the `<Leader>x` prefix with uv.

---

## Notes

- `<Leader>db`, `<Leader>dB`, and `<Leader>dC` are defined by both `plugins/dap` (AstroNvim) and `persistent-breakpoints.nvim`. Whichever loads last wins.
- `<Leader>gg` and `<Leader>tl` both open lazygit.
- Press `<Leader>` and wait to see the full list of groups in your session.

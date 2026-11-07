# Python / Django REST Framework Debugging

Debugger setup for Python projects using `nvim-dap`, `nvim-dap-python`, and `debugpy`. Projects are managed with `uv`.

Shortcut reference: see the **Debugger** section in `SHORTCUTS.md`.

---

## Setup

### Configuration file

`lua/plugins/dap-python.lua`:

- Finds the nearest `.venv` by searching upward from the current file, then uses `.venv/bin/python` as the debug interpreter. Falls back to `python3` if no venv is found.
- Sets `pytest` as the test runner.
- Adds a **Django: runserver** launch configuration.

### Project requirements

Each Django project needs `debugpy` installed in its venv:

```bash
uv add --dev debugpy
```

Check that the interpreter can import the required packages:

```bash
uv run python -c "import debugpy, django, rest_framework; print('ok')"
```

---

## Debugging a Django dev server

1. Open a file in the project (for example, a view or serializer).
2. Set a breakpoint with `<F9>` or `<Leader>db`.
3. Press `<F5>` and select **Django: runserver**.
4. Send a request to the endpoint (browser, `curl`, or the DRF browsable API). Execution pauses at the breakpoint.

The config passes `--noreload`. Django's autoreloader forks a child process that the debugger cannot attach to, so breakpoints would stop working without this flag.

`justMyCode = false` lets you step into DRF and other `site-packages` code.

---

## Debugging a single test

With the cursor inside a test:

```vim
:lua require('dap-python').test_method()
:lua require('dap-python').test_class()
```

These use `pytest`, and `pytest-django` handles test database setup automatically.

---

## Attaching to a running server

Useful when the server runs in another terminal, tmux pane, or Docker container.

Start the server under debugpy:

```bash
uv run python -m debugpy --listen 5678 --wait-for-client manage.py runserver --noreload
```

Then press `<F5>` and select **Attach Django :5678**. This config is not defined in `dap-python.lua`. Add it to the `dap.configurations.python` table if you need it:

```lua
table.insert(dap.configurations.python, {
  type = "python",
  request = "attach",
  name = "Attach Django :5678",
  connect = { host = "127.0.0.1", port = 5678 },
  django = true,
  justMyCode = false,
})
```

---

## Inspecting while paused

| Key | Action |
|-----|--------|
| `<Leader>du` | Toggle the debugger UI (variables, stack, breakpoints) |
| `<Leader>dE` | Evaluate an expression (normal mode prompts, visual mode uses selection) |
| `<Leader>dR` | Toggle the REPL |
| `<Leader>dh` | Hover to inspect the value under the cursor |

Useful expressions in DRF views:

- `request.user`
- `self.kwargs`
- `serializer.errors`
- `serializer.validated_data`

---

## Troubleshooting

### Popup: `Executable ... not found`

nvim-dap could not spawn the debug adapter. The interpreter path is wrong or does not exist.

Check the path nvim will use:

```vim
:lua require("dap").adapters.python(function(a) print(a.command) end, {request="launch", type="python"})
```

The output should be the absolute path to `.venv/bin/python` in the project. If it's wrong, restart nvim, since the config is read at startup.

### `No module named 'debugpy'`

The venv is missing `debugpy`. From the project root:

```bash
uv add --dev debugpy
```

### Breakpoints are not hit

- Make sure the server was started with `--noreload`.
- Confirm the breakpoint is in code that actually runs. Check that the request reaches that view.
- Restart the debug session after editing code.

### No log output

The DAP log is at `~/.local/state/nvim/dap.log`. Errors usually appear as popups or in `:messages`, so check there first.

---

## Notes

- The Python interpreter is chosen when nvim starts. Restart nvim after changing `dap-python.lua` or moving a venv.
- To debug a different project, open a file from that project and confirm the adapter path with the check command above.

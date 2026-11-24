Goes into the instance launch options

```sh
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar https://githubusercontent.com<YOUR_USER>/<YOUR_REPO>/main/pack.toml
```

# packwiz-installer-bootstrap
[GitHub](https://github.com/packwiz/packwiz-installer-bootstrap)

An example of how to add an optional mod

```toml
[option]
optional = true
default = false
description = "Adds shader support (disable on weaker PCs)"
```

Adding mods

Search with spaces (use quotes):
```bash
packwiz modrinth add "Sophisticated Backpacks"
```


Full Modrinth URL:

*   **Project slug (from the Modrinth URL, no quotes needed):**
```bash
packwiz modrinth add sophisticated-backpacks
```
*(Using the URL slug—the last part of `https://modrinth.com`—guarantees an instant exact match without needing interactive prompts).*

```bash
packwiz modrinth add https://modrinth.com
```

*   **Modrinth Project ID:**
```bash
packwiz modrinth add x9BgfazI
```

Importing requires an existing pack.toml

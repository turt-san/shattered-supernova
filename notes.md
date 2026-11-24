```sh
packwiz modrinth add "<paste-version-url-here>"
# dont work
packwiz modrinth add item-descriptions --version-filename "ItemDescriptions-forge-1.20.1-2.5.4.jar"
packwiz modrinth add https://modrinth.com/mod/item-descriptions/version/2.5.4+1.20.1-forge
packwiz modrinth add --project-id UaizcMKP --version-id LD1xqfoY
packwiz pin item-descriptions
```
Goes into the instance launch options

`https://<username>.github.io/<repo-name>/pack.toml`
```sh
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar https://githubusercontent.com/<YOUR_USER>/<YOUR_REPO>/main/pack.toml
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

Project slug (from the Modrinth URL, no quotes needed):
```bash
packwiz modrinth add sophisticated-backpacks
```

(Using the URL slug—the last part of `https://modrinth.com`—guarantees an instant exact match without needing interactive prompts).
```bash
packwiz modrinth add https://modrinth.com
```

Modrinth Project ID:
```bash
packwiz modrinth add x9BgfazI
```

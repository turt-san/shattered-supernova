# Creating a test branch
Using the modern `switch` subcommand
```sh
git switch -c test-branch-name
```

Or if you're ancient
```sh
git checkout -b test-branch-name
```

# Restoring files
To restore an uncommited file
```sh
git restore <file>
```

To restore a file from a different branch, in this case `main`
```sh
git restore --source=main <file>
```

# Switching back to main and merging
```sh
git switch main
git merge test-branch-name
```

# Adding a version tag & pushing
```sh
git tag -a v1.3.0 -m "Release v1.3.0: Add Botania"
git push origin main --tags
```

# Deleting the test branch (optional)
```sh
git tag -a v1.3.0 -m "Release v1.3.0: Add Botania"
git push origin main --tags
git branch -d test-magic-mods
```

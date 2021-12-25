# markdown_web

I write my web in [markdown](https://en.wikipedia.org/wiki/Markdown), a simple plain text format, and I convert the sources to HTML using [Pandoc](https://pandoc.org/).

See it in action:

https://eloitor.github.io


## Features:

- Markdown
- Fast build time
- Multilingual
    - Write each language in a separate folder. Don't forget to add the language to the `templates/nav.html` file.
    - The base url redirects to the default language. (Configured in `src/index.html`)
- No server required
- CI (Continuous integration)

## Requirements:

- `pandoc`
- `make`
- `entr` (optional)

## Build process:

```
make clean  # remove all generated files

make        # build the HTML files        

make auto   # build the HTML files every time a source file changes (uses entr)
```


## Deploy to Codeberg

1. Create an account at [codeberg.org](https://codeberg.org/).
2. Migrate your project from Github and rename the repo to `pages`.  
https://docs.codeberg.org/advanced/migrating-repos/

3. In the new repo, go to settings > branches
4. Select the "pages" branch and click "update default branch"
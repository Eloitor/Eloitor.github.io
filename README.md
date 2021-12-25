# markdown_web

I write my web pages in [markdown](https://en.wikipedia.org/wiki/Markdown), a simple plain text format, and I convert them to HTML using [Pandoc](https://pandoc.org/).

## Features:

- Markdown
- Fast build time
- Multilingual
- No dependencies
- No server

## Requirements:

- pandoc
- make

## Build process:

```
make
```

## Deploy to Codeberg

1. Create an account at [codeberg.org](https://codeberg.org/).
2. Migrate your project from Github and rename the repo to `pages`.  
https://docs.codeberg.org/advanced/migrating-repos/

3. In the new repo, go to settings > branches
4. Select the "pages" branch and click "update default branch"
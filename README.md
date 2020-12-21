---
title: Readme
modified: 2020-12-17T12:44:16+01:00
---

# Readme

Webpage created with Jekyll.

## YML headers

```
---
title: My title
layout: what template to use. (_layouts/)
math: true (Optional, runs katex)
---
```


## Language
All pages in catalan are inside `ca/`, and all english pages in `en/`.

This is configured in `_conf.yml`:
```yml
defaults:
  - scope:
      path: "ca/"
  - values:
      language: "ca"
  - scope:
      path: "en/"
  - values:
      language: "en"
```

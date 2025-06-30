# BSc thesis: statistical assurance

Psychology bachelor's thesis regarding statistical asssurance for estimating sample sizes and power

- author: [Esther Weidauer](https://www.selfawaresoup.com)
- [latest rendered documents](https://github.com/selfawaresoup/bsc-statistical-assurance/releases/latest)

## Rendering documents

On the `main` branch documents are rendered automatically by a [Github action](.github/workflows/render-documents.yaml) when pushed to Github.

They can also be rendered locally:

### Incremental render

```
make all
```

### Clean render

```
make clean && make all
```

### Rendering individual documents

```
make expose
```

```
make thesis
```

### Requirements

- TeXLive (with `latexmk`)
- GNU Make (or equivalent)

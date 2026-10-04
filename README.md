# SGA 4½ — *Cohomologie Étale* (LaTeX edition)

[![Build LaTeX PDFs](https://github.com/winstoncheong/sga4.5/actions/workflows/latex.yml/badge.svg)](https://github.com/winstoncheong/sga4.5/actions/workflows/latex.yml)

A LaTeX version of P. Deligne's **SGA 4½, *Cohomologie Étale***
(Lecture Notes in Mathematics 569, Springer-Verlag, 1977),
with the collaboration of J.F. Boutot, A. Grothendieck, L. Illusie and
J.L. Verdier. Typesetting by Daniel Miller.

## 📄 Download the PDFs

The PDFs are compiled automatically by [CI](.github/workflows/latex.yml)
on every push to `master` and hosted on GitHub Pages:

| Edition | PDF |
|---|---|
| Français (original) | [sga4.5.pdf](https://winstoncheong.github.io/sga4.5/sga4.5.pdf) |
| English (AI-assisted translation) | [sga4.5-en.pdf](https://winstoncheong.github.io/sga4.5/sga4.5-en.pdf) |

Tagged versions (`v*`) also attach both PDFs to the corresponding
[GitHub Release](https://github.com/winstoncheong/sga4.5/releases).

## 🛠 Compile locally

Requirements: a TeX Live installation with `latexmk` (both French and
English editions build with `pdflatex` + `bibtex`, driven by `latexmkrc`).

```sh
latexmk sga4.5.tex      # French original  -> sga4.5.pdf
latexmk sga4.5-en.tex   # English edition  -> sga4.5-en.pdf
```

The French build should complete without warnings. Generated files
(`*.aux`, `*.pdf`, …) are git-ignored; the PDFs live on CI, not in the repo.

## 🗂 Layout

| File(s) | Contents |
|---|---|
| `sga4.5.tex` | Main file, French original |
| `sga4.5-en.tex` | Main file, English edition |
| `sga4.5-N.tex` (`N` = `1`–`8`, `intro`, `note`, `erratum`) | French chapters (untouched) |
| `sga4.5-N-en.tex` | English chapters (translated progressively) |
| `sga-style.sty` | Shared preamble; `\usepackage[english]{sga-style}` selects English theorem names and hyphenation (default is French) |
| `sga-sources.bib` | Shared bibliography |
| `site/index.html` | Landing page deployed to GitHub Pages alongside the PDFs |

## 🌍 The English translation

The English edition is complete: every chapter has been translated from the
French original with AI assistance, orchestrated by the maintainer. It has
not yet been fully proofread by a mathematician — corrections and
improvements are very welcome:

1. Edit the relevant `sga4.5-N-en.tex` file in place (never the French
   `sga4.5-N.tex` original).
2. Check it compiles: `latexmk sga4.5-en.tex`.
3. Open a pull request — CI builds both PDFs so reviewers can compare.

Please keep the `\label`s unchanged so cross-references stay aligned
between the two editions.

## ⚖️ Note

This is an unofficial typesetting of a Springer-published work, shared for
study purposes following the original
[dkmiller/sga4.5](https://www.github.com/dkmiller/sga4.5) project.

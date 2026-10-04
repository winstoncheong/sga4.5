# latexmk configuration shared by local builds and CI.
$pdf_mode = 1;                       # pdflatex -> PDF
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
$bibtex_use = 2;                     # run bibtex when needed (bibliography)
$max_repeat = 5;                     # resolve cross-references

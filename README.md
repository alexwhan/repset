# biokanga-manuscript
A repository for a manuscript (application note?)  about [biokanga](https://github.com/csiro-crop-informatics/biokanga).

# Experiments
Adapting and containerising  earlier experiments (ongoing).

Running the current version requires approximately 40 CPU-hours. There are a few execution options, all require Nextflow and Singularity.

```
nextflow run csiro-crop-informatics/biokanga-manuscript
```

See [nextflow.config](nextflow.config#L18-L32) for available execution profiles, e.g.

```
nextflow run csiro-crop-informatics/biokanga-manuscript -profile singularity,singularitymodule
```

or

```
nextflow run csiro-crop-informatics/biokanga-manuscript -profile slurm,modules,singularitymodule
```

## Experimental pipeline overview


![figures/dag.png](figures/dag.png)

# WRiting:

## Source

Application note is drafted in [RMarkdown](https://rmarkdown.rstudio.com/) in [`biokanga-manuscript.Rmd`](biokanga-manuscript.Rmd) file. RMarkdown is well intergrated in RStudio, but if you'd rather write/edit in a text editor of your choice, here is all that should be required to render the manuscript.

## Bibliography

Among the [alternatives available](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html#specifying_a_bibliography) we provisionally opt for BibTeX, see [`references.bib`](references.bib).

## Rendering dependencies

* `R` e.g. on ubuntu `sudo apt apt install r-base-core`
* `pandoc` e.g. on ubuntu `sudo apt install pandoc pandoc-citeproc`
* `LaTeX` e.g. on ubuntu `sudo apt install texlive texlive-latex-extra`
* additional R packages installed and loaded by [`render.R`](render.R)

**TODO: containerize the rendering environment**

## Rendering

```
./render.R
```

# Reproductivity of the results

**NOTE: this is aim and not yet the reality**

All results presented in the manuscript can be reproduced by executing `nextflow run csiro-crop-informatics/biokanaga-manuscript`.


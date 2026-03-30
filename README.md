# Structured Topic Modeling of UN General Debate Speeches in R

[![Launch on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/arnim/stm-methodshub-tutorial/main?labpath=stm_un_tutorial.ipynb)
[![Jupyter4NFDI](https://nfdi-jupyter.de/images/jupyter4nfdi_badge.svg)](https://hub.nfdi-jupyter.de/v2/gh/arnim/stm-methodshub-tutorial/main?labpath=stm_un_tutorial.ipynb)

This repository contains a Methods Hub-style Jupyter notebook tutorial for **Structured Topic Models (STM)** in **R** using **IRkernel**.

## Tutorial source file

- `stm_un_tutorial.ipynb`

## What this tutorial does

The tutorial closely follows the original notebook in `arnim/stmdemo`:
- source notebook: <https://github.com/arnim/stmdemo/blob/master/un-stm.ipynb>

It uses:
- the **same dataset** (`UNgeneraldebate.corpus.RData`)
- the **same pre-fitted STM model** (`UNgeneraldebate.stm.RData`)
- the **same topic parametrization** (`K = 40`)

The tutorial is based on the original UN General Debate Corpus release used in the source notebook. For readers looking for the dataset record today, the persistent Harvard Dataverse DOI is:
- <https://doi.org/10.7910/DVN/0TJX8Y>

This DOI refers to the same original dataset record first published in 2017, but it now resolves to newer updated versions of the corpus. So it is the same dataset lineage / persistent identifier, not necessarily the exact same file version originally used in the notebook.

The only substantive code update is a small preprocessing change required for compatibility with current versions of `quanteda`.

## Repository structure

- `stm_un_tutorial.ipynb` – tutorial notebook
- `data/` – data files used by the tutorial
- `binder/` – Binder and Methods Hub execution files
- `renv.lock` – local R environment lockfile
- `renv/` – project-local `renv` infrastructure

## Reproducibility

### Local with renv

Open the project in R and run:

```r
renv::restore()
```

To register the R Jupyter kernel locally if needed:

```r
IRkernel::installspec(user = TRUE, name = "ir-renv", displayname = "R (renv IRkernel)")
```

### Binder / Methods Hub

The repository includes:
- `binder/runtime.txt`
- `binder/install.R`
- `binder/postBuild`

These files follow the Methods Hub tutorial guidelines:
<https://github.com/GESIS-Methods-Hub/guidelines-for-tutorials>

## Rendering / execution

If Quarto is available, the notebook can be rendered with:

```bash
quarto render stm_un_tutorial.ipynb --execute
```

Or executed with Jupyter:

```bash
jupyter nbconvert --to notebook --execute --inplace stm_un_tutorial.ipynb
```

## License

MIT License. See `LICENSE`.

## Citation

See `CITATION.cff`.

## Acknowledgment

Parts of this tutorial repository were prepared with assistance from the [pi coding agent](https://shittycodingagent.ai) using OpenAI GPT-5.4. Final review and responsibility remain with the author.

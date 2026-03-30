# Structured Topic Modeling of UN General Debate Speeches in R

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

# Equity Tool ETL (Extract Transform Load)

## "Quick"start

We recommend managing python and requirement versions with `pyenv` and `venv`
1. Install [Python 3](https://www.python.org/)
2. Install [pip](https://pip.pypa.io/en/stable/installation/)
3. Install [Jupyter-lab or Jupyter Classic](https://jupyter.org/install)
4. Run Jupyter-Lab with `jupyter-lab` and Jupyter Classic with `jupyter notebook` from the command line.
```
  .../ose-equity-tool-etl/ $ pip install -r requirements.txt
```
5. Create and/or configure the `config/` file for the desired category.
6. Edit the `DB_EDDT_TARGET` `notebooks/etl.ipynb` file to point to the updated data source folder
7. Run the `etl.ipynb` notebook through Jupyter (Classic or Lab).
8. (Optional) Serve and test the generated files locally
   - Serve the files by running `docker compose up` within this repository
   - Test the files by running the `equity-tool` application with `NEXT_PUBLIC_DO_SPACE_URL=http://localhost:4566/configs` set in env variables
9. Commit the changes
10. Place an annotated tag on the commit with the format `YYYY-MM-DD--v#`
    - The date must match the edm folder used to generate the output files
    - The version should increment by integers, reflecting number of outputs generated from the same source folder
    - example tag `git tag -a 2023-04-21--v1 -m 'update vintage years'`
    - push the tag `git push origin 2023-04-21--v1`
11. Copy the generated files in `/output` to the static file server (DO).
   - The DO Spaces folder name must match the git tag
12. Remember that to test the new tables in EDDE, you have to add the respective category to the
`categories` constant in the EDDE data page. `src/pages/data/[geography]/[geoid]/[category]/[subgroup].tsx`

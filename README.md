# Equity Tool ETL (Extract Transform Load)

## "Quick"start

1. Install [Python 3](https://www.python.org/)
2. Install [pip](https://pip.pypa.io/en/stable/installation/)
3. Install [Jupyter-lab or Jupyter Classic](https://jupyter.org/install)
4. Run Jupyter-Lab with `jupyter-lab` and Jupyter Classic with `jupyter notebook` from the command line.
```
  .../ose-equity-tool-etl/ $ pip install -r requirements.txt
```
5. Create and/or configure the `config/` file for the desired category.
6. Open `notebooks/etl.ipynb` and edit the `config` object to load the desired config file(s): 
```py
  config = {
    "demo": [],
    "econ": load_json("../config/econ.json"),
    "hsaq": load_json("../config/hsaq.json"),
    "hopd": [],
    "qlao": []
  }
```
7. Run the `etl.ipynb` notebook through Jupyter (Classic or Lab).
8. Copy the generated files in `/output` to the static file server (DO).
9. Remember that to test the new tables in EDDE, you have to add the respective category to the
`categories` constant in the EDDE data page. `src/pages/data/[geography]/[geoid]/[category]/[subgroup].tsx`

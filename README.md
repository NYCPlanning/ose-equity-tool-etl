# Equity Tool ETL

## "Quick"start

1. Install [Python 3](https://www.python.org/)
2. Install [pip](https://pip.pypa.io/en/stable/installation/)
3. Install [Jupyter-lab or Jupyter Classic](https://jupyter.org/install)
5.
```
  .../ose-equity-tool-etl/ $ pip install requirements.txt
```
4. Create and/or configure the `config/` file for the desired category.
5. Open `notebooks/etl.ipynb` and edit the `config` object to load the desired config file(s): 
```py
  config = {
    "demo": [],
    "econ": load_json("../config/econ.json"),
    "hsaq": load_json("../config/hsaq.json"),
    "hopd": [],
    "qlao": []
  }
```
5. Run the `etl.ipynb` notebook through Jupyter (Classic or Lab).
6. Copy the generated files in `/output` to the static file server (DO).
import re
from pathlib import Path
import install

file = Path(install.__file__).read_text()

(maj, min, build) = install.__version__
new_ver = f"__version__ = {str((maj, min, build + 1))}"
print(new_ver)

res = re.sub(r"__version__ = \(\d+,\s?\d+,\s?\d+\)", new_ver, file) 
print(res.splitlines()[6:9])
Path("install.py").write_text(res)
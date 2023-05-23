# build_files.sh
from ./ import requirements.txt
pip install -r requirements.txt
python3.9 manage.py collectstatic --no-input
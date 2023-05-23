# build_files.sh

requirements_file="../requirements.txt"

if [ -f "$requirements_file" ]; then
    pip install -r "$requirements_file"
else
    echo "Le fichier $requirements_file n'existe pas dans le répertoire parent."
    exit 1
fi

python3.9 manage.py collectstatic --no-input
# build_files.sh

requirements_file="../requirements.txt"
manage_file="../manage.py"

if [ -f "$requirements_file" ]; then
    pip install -r "$requirements_file"
else
    echo "Le fichier $requirements_file n'existe pas dans le répertoire parent."
    exit 1
fi



if [ -f "$manage_file" ]; then
    python $manage_file collectstatic --no-input
else
    echo "Le fichier $manage_file n'existe pas dans le répertoire parent."
    exit 1
fi


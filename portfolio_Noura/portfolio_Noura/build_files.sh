# build_files.sh

echo "BUILD START"

requirements_file="../requirements.txt"
manage_file="../manage.py"

if [ -f "$requirements_file" ]; then
    pip install -r "$requirements_file"
else
    echo "Le fichier $requirements_file n'existe pas dans le répertoire parent."
    exit 1
fi



if [ -f "$manage_file" ]; then
    echo "Collecting static files..."
    python3 $manage_file collectstatic --no-input
    echo "Static files collected."
    python3 $manage_file collectstatic --no-input
else
    echo "Le fichier $manage_file n'existe pas dans le répertoire parent."
    exit 1
fi

echo "BUILD END"
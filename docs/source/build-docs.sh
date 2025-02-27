#!/usr/bin/env bash

set -euxo pipefail
DOCS_DIR="./docs"
VENV_DIR=${DOCS_DIR}/_venv

python -m venv ${VENV_DIR} && source ${VENV_DIR}/bin/activate

cd ${DOCS_DIR}/source

# Fake the ansible_collections path for python imports
SITE_PACKAGES=$(python -c 'import site; print(site.getsitepackages()[0])')
mkdir -p "${SITE_PACKAGES}/ansible_collections/cifmw"
ln -nsfr ../../ci_framework "${SITE_PACKAGES}/ansible_collections/cifmw/general"

make clean

pip install -r ../doc-requirements.txt
make html

deactivate

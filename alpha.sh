#!/bin/bash

cd $(dirname $(realpath $0))

source venv/bin/activate

streamlit run alpha.py --server.port 3141

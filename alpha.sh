#!/bin/bash

# If parameter is "start" then run streamlit
# If parameter is "kill" then killall ax_alpha
# If none of the above, then print usage message

if [ "$1" = "start" ]; then
  cd $(dirname $(realpath $0))
  source venv/bin/activate
  streamlit run alpha.py --server.port 3141 --server.baseUrlPath /Alpha > /dev/null &
  clear
  echo -e "\e[1m\e[31m🔥 Alpha\e[0m\e[93m started! Now you can access it at \e[1m\e[31mhttp://localhost:3141/Alpha\e[0m\e[93m"
  echo ""
elif [ "$1" = "kill" ]; then
  killall streamlit
else
  echo "Usage:
  start - Initializes Alpha.
  kill - This, uh... Tells Alpha to go to sleep... Yeah, that's right."
fi

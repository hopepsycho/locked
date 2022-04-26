if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hopepsycho/locked.git /locked
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /locked
fi
cd /Ajax
pip3 install -U -r requirements.txt
echo "Starting locked....🔥"
python3 bot.py

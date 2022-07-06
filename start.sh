if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ccadmin1/Minion-Bot /Minion-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Minion-Bot
fi
cd /Minion-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

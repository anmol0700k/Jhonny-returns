if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anmol0700k/Jhonny-returns /Jhonny-returns
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Jhonny-returns
fi
cd /Jhonny-returns
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

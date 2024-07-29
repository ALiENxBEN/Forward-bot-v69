echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://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:x-oauth-basic@github.com/ALiENxBEN/Forward-bot-v69 ALiENxBEN/Forward-bot-v69
else
  echo "Cloning $BRANCH branch...."
  git clone https://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:x-oauth-basic@github.com/ALiENxBEN/Forward-bot-v69 -b $BRANCH /Forward-bot-v69
fi
cd ALiENxBEN/Forward-bot-v69
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py

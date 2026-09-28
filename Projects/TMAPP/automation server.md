1. git pull
2. cd /home/ubuntu/tmapp_data_processing/unilever/ul-ml-tm-app
3. conda activate automation
4. ps aux | grep app.py
5. sudo lsof -i :5000
6. kill <PID>
7. nohup python -u app.py > automation.log 2>&1 & => start again
8. ls -lah ~/.ssh
9. cat ~/.ssh/id_ed25519.pub

(automation) [ubuntu@ip-172-31-44-40 ul-ml-tm-app]$ python -m py_compile app.py //test these files after push
(automation) [ubuntu@ip-172-31-44-40 ul-ml-tm-app]$ nohup python -u app.py > automation.log 2>&1 &

use this.
pkill -f "python -u app.py"
rm -f automation.log
nohup python -u app.py > automation.log 2>&1 &
sleep 2
cat automation.log

98%
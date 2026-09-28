tmux new -s ul_pipeline_test => to start the new
tmux attach -t ul_pipeline_test => again enter in this 
CTRL + B + (release them) + D => to detattch from the server
bash run-ul-pipeline.sh 2>&1 | tee /home/administrator/ul-project/run-ul-pipeline-test.log => run this command to check for my scripts
tmux ls => to check the running tmux
tmux kill-session -t ul_pipeline_test => to kill the session
tail -f /home/administrator/ul-project/run-ul-pipeline-test.log => logs 

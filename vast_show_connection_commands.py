#!/usr/bin/env python3

import subprocess
import json
import requests
import numpy as np
from datetime import datetime as dt

def get_instances():
    return json.loads(subprocess.check_output('vast show instances --raw'.split(' ')).decode())

def get_ssh_connect_command(instance, check_host_key=False):
    return 'ssh %s root@%s -p %i'%\
        ('-o "StrictHostKeyChecking no"' if check_host_key else '',
        instance['ssh_host'],
        instance['ssh_port'])

for i in get_instances():
    if i['actual_status']=='running':
        print(get_ssh_connect_command(i, check_host_key=True))
        #command = get_ssh_connect_command(i, check_host_key=True).split(' ')+["tail bminer/mining.log"] 
        #print(command)
        #command = ["ssh",'root@'+i['ssh_host'],'-p',str(i['ssh_port']),'"tail /root/bminer/mining.log"']
        #print(' '.join(map(str,command)))
        #result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #print(result.stderr.decode('utf-8'))
        #print(result.stdout.decode('utf-8'))
        #print(subprocess.check_output(command))

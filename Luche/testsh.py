#!/usr/bin/python2
#import sh
import json
import os
import tempfile
import subprocess

#a=sh.echo("AAAA")
#print(a)
#b="ls -la"
#print(b)
#subprocess.run(['ls','-la'])
a='1.xml'
sentt="nc -N localhost 8070 < {}".format(a)
#subprocess.call("nc -N localhost 8070 < 1.xml", shell=True, executable = '/bin/bash')
subprocess.call(sentt, shell=True, executable = '/bin/bash')
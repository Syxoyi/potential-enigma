#!/usr/bin/python3

import os
import sys
from analizys.db_data import collect_data as cd
#from import as

workdir=os.path.abspath(os.path.dirname(sys.argv[0]))
os.chdir(workdir)
print(workdir)
#print('start\n')
coll = cd.GetSortDate(10)
coll.get_data_by_time()

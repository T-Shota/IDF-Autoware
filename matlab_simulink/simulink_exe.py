#!/usr/bin/env python
import os
import sys
import commands

Codepath = sys.argv[1]
modelname=os.path.splitext(os.path.split(Codepath)[1])[0]
exepath = os.path.split(Codepath)[0] + "/sim_exe.m"

f = open(exepath, 'w')
text = []

text.append("open_system(\'"+ modelname + "\')\n")
text.append("sim(\'"+ modelname + "\')")

f.writelines(text)
f.close()

print exepath
commands.getoutput("gnome-terminal --tab -e \"matlab -r \\\"run(\'" + exepath + "\')\\\"\"")
#commands.getoutput("gnome-terminal --tab -e \"cd "+ Codepath +"\n matlab -r \\\"run(\'" + exepath + "\')\\\"\"")

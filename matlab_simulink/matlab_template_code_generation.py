#!/usr/bin/env python
import os
import sys
import yaml

f = open(os.path.expanduser("~/IDF_Autoware/matlab_simulink/Nodeinfo_1.yaml"), 'r')
Nodeinfo_dic = yaml.load(f)
f.close()

Nodename = sys.argv[1]

mFilename = os.path.expanduser("~/IDF_Autoware/matlab_simulink/generated_code/matlab/") + Nodename + ".m"
mFile = open(mFilename, 'w')
mText = []

Node_row = "node = robotics.ros.Node(\'" + Nodename + "\')\n"
mText.append(Node_row)

for line in Nodeinfo_dic[Nodename][0]['pub']:
	pub_row = line[0].strip("/").replace("/", "_") + "_pub = robotics.ros.Publisher(node, \'" + line[0] + "\', \'" + line[1] + "\');\n"
	mText.append(pub_row)

for line in Nodeinfo_dic[Nodename][1]['sub']:
	sub_row = line[1].strip("/").replace("/", "_") + "_sub = robotics.ros.Subscriber(node, \'" + line[0] + "\', \'" + line[1] + "\', @" + line[0].strip("/").replace("/", "_") + "_Callback);\n"
	mText.append(sub_row)

for line in Nodeinfo_dic[Nodename][1]['sub']:
	Callback_row = "\n" + line[0].strip("/").replace("/", "_") + "_Callback(~, msg)\nend"
	mText.append(Callback_row)

mFile.writelines(mText)
mFile.close()


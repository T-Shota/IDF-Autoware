#!/usr/bin/env python

import os
import sys
import yaml

def add_block_pub(i, line ,Nodename):
	pub_rows = []
	msg_blockname = Nodename + "/" + line[1].replace("/", "::") + str(i)
	bus_blockname = Nodename + "/BusA" + str(i)
	pub_blockname = Nodename + "/" + line[0].lstrip("/").replace("/", "::")
	print str(i)
	pub_rows.append("add_block(\'robotlib/Blank Message\', \'" + msg_blockname + "\');\n")
	pub_rows.append("set_param(\'" + msg_blockname + "\', \'messageType\', \'" + line[1] + "\');\n")
	pub_rows.append("set_param(\'" + msg_blockname + "\', \'Position\', [70, " + str(50 + i *150) + ", 200, "+ str(120 + i *150) +"]);\n")
	pub_rows.append("portpm" + str(i) + " = get_param(\'" + msg_blockname + "\', \'PortHandles\');\n")
	pub_rows.append("add_block(\'simulink/Signal Routing/Bus Assignment\', \'" + bus_blockname + "\');\n")
	pub_rows.append("set_param(\'" + bus_blockname + "\', \'Position\', [250, " + str(70 + i *150) + ", 295, "+ str(120 + i *150) +"]);\n")
	pub_rows.append("portA" + str(i) + " = get_param(\'" + bus_blockname + "\', \'PortHandles\');\n")
	pub_rows.append("add_block(\'robotlib/Publish\',\'" + pub_blockname + "\');\n")
	pub_rows.append("set_param(\'" + pub_blockname + "\', \'topicSource\', \'Specify your own\');\n")
	pub_rows.append("set_param(\'" + pub_blockname + "\', \'topic\', \'" + line[0] + "\');\n")
	pub_rows.append("set_param(\'" + pub_blockname + "\', \'messageType\', \'" + line[1] + "\');\n")
	pub_rows.append("set_param(\'" + pub_blockname + "\', \'Position\', [345, " + str(65 + i *150) + ", 475, "+ str(135 + i *150) +"]);\n")
	pub_rows.append("portp" + str(i) + " = get_param(\'" + pub_blockname + "\', \'PortHandles\');\n")
	pub_rows.append("add_line(\'" + Nodename + "\', portpm" + str(i) + ".Outport, portA" + str(i) + ".Inport(1));\n")
	pub_rows.append("add_line(\'" + Nodename + "\', portA" + str(i) + ".Outport, portp" + str(i) + ".Inport);\n")

	return pub_rows

def add_block_sub(i, line, Nodename):
	sub_rows = []
	ter_blockname = Nodename + "/Term" + str(i)
	bus_blockname = Nodename + "/BusS" + str(i)
	sub_blockname = Nodename + "/" + line[0].lstrip("/").replace("/", "::")
	print str(i)
	sub_rows.append("add_block(\'robotlib/Subscribe\', \'" + sub_blockname + "\');\n")
	sub_rows.append("set_param(\'" + sub_blockname + "\', \'topicSource\', \'Specify your own\');\n")
	sub_rows.append("set_param(\'" + sub_blockname + "\', \'topic\', \'" + line[0] + "\');\n")
	sub_rows.append("set_param(\'" + sub_blockname + "\', \'messageType\', \'" + line[1] + "\');\n")
	sub_rows.append("set_param(\'" + sub_blockname + "\', \'Position\', [70, " + str(50 + i *150) + ", 200, "+ str(120 + i *150) +"]);\n")
	sub_rows.append("ports" + str(i) + " = get_param(\'" + sub_blockname + "\', \'PortHandles\');\n")
	sub_rows.append("add_block(\'simulink/Sinks/Terminator\', \'" + ter_blockname + "\');\n")
	sub_rows.append("set_param(\'" + ter_blockname + "\', \'Position\', [275, " + str(60 + i *150) + ", 295, "+ str(80 + i *150) +"]);\n")
	sub_rows.append("portT" + str(i) + " = get_param(\'" + ter_blockname + "\', \'PortHandles\');\n")
	sub_rows.append("add_block(\'simulink/Signal Routing/Bus Selector\', \'" + bus_blockname + "\');\n")
	sub_rows.append("set_param(\'" + bus_blockname + "\', \'Position\', [250, " + str(85 + i *150) + ", 295, "+ str(120 + i *150) +"]);\n")
	sub_rows.append("portS" + str(i) + " = get_param(\'" + bus_blockname + "\', \'PortHandles\');\n")
	sub_rows.append("add_line(\'" + Nodename + "\', ports" + str(i) + ".Outport(1), portT" + str(i) + ".Inport);\n")
	sub_rows.append("add_line(\'" + Nodename + "\', ports" + str(i) + ".Outport(2), portS" + str(i) + ".Inport);\n")

	return sub_rows

f = open(os.path.expanduser("~/IDF_Autoware/matlab_simulink/Nodeinfo_1.yaml"), 'r')
Nodeinfo_dic = yaml.load(f)
f.close()

Nodename = sys.argv[1]

mFilename = os.path.expanduser("~/IDF_utoware/matlab_simulink/generated_code/simulink/") + Nodename + "_simulink_model_creat.m"
mFile = open(mFilename, 'w')
mText = []

start_row = "simulink;\nnew_system(\'" + Nodename + "\');\n"
mText.append(start_row)

for i, line in enumerate(Nodeinfo_dic[Nodename][0]['pub']):
	pub_rows = add_block_pub(i, line, Nodename)
	mText.extend(pub_rows)
print i
for j, line in enumerate(Nodeinfo_dic[Nodename][1]['sub']):
	sub_rows = add_block_sub(j + i +1, line, Nodename)
	mText.extend(sub_rows)

end_row = "save_system(\'" + Nodename + "\');\n"
mText.append(end_row)

mFile.writelines(mText)
mFile.close()
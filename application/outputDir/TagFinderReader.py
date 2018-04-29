from __future__ import division
import os
from math import atan2,degrees
import json
import random
import sys
import io


#Takes a concatenated csv, merges with naquora so that only the relevant calls are included, rewrites the csv and writes the json

offX = -2.8
offZ = 16.65

def createJSON(fileName, x_c, y_c, ID, theta_val):
#filename = "expenditure_person_location_35199_HIDs_1280_days_.csv"
    filename = str(fileName)
    frameNum = fileName.split('_')[2]
    frameNum = int(frameNum.split('.')[0])
    data = {}
    #data['age'] = 'OLD'
    #data['connectionType'] = 'DATASOURCE'
    data['id'] = str(ID)
    #data['cameraID'] = 1
    offset_X = (5.02/1360)
    offset_Z = (6.94/1488)
    data['origin'] = {}
    data['origin']['x'] = (y_c * offset_X) + offX
    data['origin']['y'] = 2.78
    data['origin']['z'] = (x_c * offset_Z) + offZ

    data['orientation'] = {}
    #data['orientation']['x'] = str(x_c)
    #data['orientation']['y'] = str(y_c)
    #data['orientation']['z'] = None
    data['orientation']['theta'] = str(theta_val)
    #data['source'] = 'OPENCV'
    #data['updateTime'] = 0
    #data['creationTime'] = 0
    #data['boundingBox'] = {}
    #data['boundingBox']['x'] = 232
    #data['boundingBox']['y'] = 327
    #data['boundingBox']['width'] = 210 
    #data['boundingBox']['height'] = 210
    #data['boundingBox']['image_width'] = 800
    #data['boundingBox']['image_height'] = 650
    #data['boundingBox']['blobarea'] = 29137.5

    #data['FrameNum'] = frameNum

    fName = fileName[:-2] + '_tag_' + str(ID) + '.json'

    with open(fName, 'w') as f:
	json.dump(data, f)

 
def GetAngleOfLineBetweenTwoPoints(p1, p2):
    xDiff = p2[0] - p1[0]
    yDiff = p2[1] - p1[1]
    return degrees(atan2(yDiff, xDiff))

if __name__ == "__main__":
    count = 0
    fileNames = []
    fileList = os.listdir(".")
    fileList.sort()
    for fNames in fileList:
        if ('log' in fNames) and ('.m' in fNames):
	    fileNames.append(fNames)


    for f in fileNames:
	fileVal = open(f, 'r')
	dataVal = {}
	count = 0
	cxy = 0
	cxy_val = []
	for lines in fileVal:
  	    if 'tag.id' in lines:
		idVal = lines.split('=')[1]
		idVal = int(idVal.split(';')[0])
		dataVal[idVal] = {}
				
	    if 'tag.p' in lines:
		coordinates = lines.split('=')[1]
		count = 1
		coordinates = coordinates.split(',')
		x_val = coordinates[0].split('[')
		x_val = float(x_val[1])
		y_val = coordinates[1].split(';')
		y_val = float(y_val[0])
				   
		dataVal[idVal][count] = [x_val, y_val]
			
	    if count == 1 and 'tag' not in lines:
		count = 0
		coordinates = lines.split(',')
				
		x_val = float(coordinates[0])
		y_val = coordinates[1].split(';')
		y_val = float(y_val[0])
					
		dataVal[idVal][2] = [x_val, y_val]
				
	    if 'tag.c' in lines:
		cxy_val = []
		coordinates = lines.split('=[')
		x_val = float(coordinates[1].split(';')[0])
		cxy_val.append(x_val)
		cxy = 1
			
	    if cxy == 1 and 'tag' not in lines:
		cxy = 0
		coordinates = lines.split(']')
		y_val = float(coordinates[0])
		cxy_val.append(y_val)
		dataVal[idVal][3] = cxy_val
		cxy_val = []
		
	fileVal.close()
	for k in dataVal.keys():
	    midPtx = float((dataVal[k][1][0] + dataVal[k][2][0])/2)
    	    midPty = float((dataVal[k][1][1] + dataVal[k][2][1])/2)
	    pt1 = (midPtx, midPty)
    	    pt2 = (dataVal[k][3][0] , dataVal[k][3][1])
    	    dataVal[k]['theta'] = GetAngleOfLineBetweenTwoPoints(pt1, pt2)
	    createJSON(f, dataVal[k][3][0], dataVal[k][3][1], k, dataVal[k]['theta'])	   
 
	    ## Write the below in JSON
	    dataToWrite = 'ID: ' + str(k) + '\n'
	    dataToWrite += 'X: ' + str(dataVal[k][3][0]) + '\n'
	    dataToWrite += 'Y: ' + str(dataVal[k][3][1]) + '\n'
	    dataToWrite += 'theta: ' + str(dataVal[k]['theta']) + '\n'
	    
	
		
		

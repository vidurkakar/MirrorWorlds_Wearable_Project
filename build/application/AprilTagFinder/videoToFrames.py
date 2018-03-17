from subprocess import call
import cv2
import sys

if __name__ == "__main__":
    vidToRead = sys.argv[1]
    vidcap = cv2.VideoCapture(vidToRead)
    success,image = vidcap.read()
    count = 0
    success = True
    while success:
	success,image = vidcap.read()
	cv2.imwrite("Frames/frame%d.jpg" % count, image) 
	count += 1

    call(["./AprilTagFinder","url=photo://Frames/*.jpg","tagfamiliesID=4"])
    


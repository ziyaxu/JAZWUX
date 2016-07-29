#Importing libraries
import numpy as np
import scipy
from PIL import Image
import codecs, json

# Open the image
img = Image.open('BeachBall.png')

#resize image
width = 64
height = 64
img = img.resize((width, height), Image.ANTIALIAS)

#storing as colors
#need to do this
rgb = np.array(img)
for x in range(0,width-1):
    for y in range(0,height-1):
        pix = rgb[x][y]
        if pix[0] > pix[1] && pix[0] > pix[2]:
            rgb[x][y] = 'r'
        elif pix[1] > pix[0] && pix[1] > pix[2]:
            rgb
        else

#saving
img.save('RGBResized.jpeg')

# Write the image to arrays, using numpy
#change this
arr = 

# Example of finding a specific pixel and printing it
#print(arr[0, 5])

# Printing the entire array
#for x in arr:
#    print (x)

# Write array to a file
b = arr.tolist() # nested lists with same data, indices

build = {}
build['image'] = b
file_path = "FINAL.json" ## your path variable

json.dump(build, open(file_path, 'w'))
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
arr = np.array(img)
rgb = img.load() #array to change pixel values
for x in range(0,width):
    for y in range(0,height):
        pix = arr[x,y]
        if (pix[0] > pix[2]) & (pix[1] > pix[2]) & (pix[2] < 50):
            print(pix)
            rgb[x,y] = (255,255,0,255)
            arr[x,y] = 2
            print('yellow')
        elif (pix[2] > pix[0]) & (pix[2] > pix[1]) & (pix[2] > 50):
            print(pix)
            rgb[x,y] = (0,0,255,255)
            arr[x,y] = 3
            print('blue')
        elif (pix[0] > pix[1]) & (pix[0] > pix[2]) & (pix[0] > 50):
            print(pix)
            rgb[x,y] = (255,0,0,255)
            arr[x,y] = 1
            print('red')
        elif (pix[1] > pix[0]) & (pix[1] > pix[2]) & (pix[1] > 50):
            print(pix)
            rgb[x,y] = (0,255,0,255)
            arr[x,y] = 2
            print('green')
        elif (pix[3] == 0):
            rgb[x,y] = (255,255,255,255)
            arr[x,y] = 5
            #print('white')
        elif (pix[0] == pix[1]) & (pix[1] == pix[2]) & (pix[1] <= 150):
            rgb[x,y] = (0,0,0,255)
            arr[x,y] = 4
            #print('black')
        else:
            rgb[x,y] = (255,255,255,255)
            arr[x,y] = 6
            #print('white')

#flipping image
for x in range(0,width):
    for y in range(0,x):
        temp = rgb[y,x]
        rgb[y,x] = rgb[x,y]
        rgb[x,y] = temp

#saving
img.save('RGBResized.jpeg')

# Write the image to arrays, using numpy
#change this
arr = np.array(img)

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

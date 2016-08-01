#Importing libraries
import numpy as np
import scipy
import csv
from PIL import Image
import codecs, json

# Open the image
img = Image.open('Panda.png')

#resize image
width = 64
height = 64
img = img.resize((width, height), Image.ANTIALIAS)

#csv file
with open('test.csv', 'w', newline='') as fp:
    a = csv.writer(fp, delimiter=',')

#storing as colors
arr = np.array(img)
rgb = img.load() #array to change pixel values
for x in range(0,width):
    for y in range(0,height):
        pix = arr[x,y]
        yvalues = []
        if (pix[0] > pix[2]) & (pix[1] > pix[2]) & (pix[2] < 50):
            rgb[x,y] = (255,255,0,255)
            yvalues.append(1)
            print('yellow')
        elif (pix[2] > pix[0]) & (pix[2] > pix[1]) & (pix[2] > 50):
            rgb[x,y] = (0,0,255,255)
            yvalues.append(2)
            print('blue')
        elif (pix[0] > pix[1]) & (pix[0] > pix[2]) & (pix[0] > 50):
            rgb[x,y] = (255,0,0,255)
            yvalues.append(3)
            print('red')
        elif (pix[1] > pix[0]) & (pix[1] > pix[2]) & (pix[1] > 50):
            rgb[x,y] = (0,255,0,255)
            yvalues.append(4)
            print('green')
        elif (pix[3] == 0):
            rgb[x,y] = (255,255,255,255)
            yvalues.append(5)
            #print('white')
        elif (pix[0] == pix[1]) & (pix[1] == pix[2]) & (pix[1] <= 150):
            rgb[x,y] = (0,0,0,255)
            yvalues.append(6)
            #print('black')
        else:
            rgb[x,y] = (255,255,255,255)
            yvalues.append(7)
            #print('white')
    a.writerows(yvalues)
    

#flipping image
for x in range(0,width):
    for y in range(0,x):
        temp = rgb[y,x]
        rgb[y,x] = rgb[x,y]
        rgb[x,y] = temp

#saving
img.save('RGBResized.png')

# Write the image to arrays, using numpy

# Example of finding a specific pixel and printing it
#print(arr[0, 5])

#Importing libraries
import numpy as np
import scipy
from PIL import Image
import codecs, json

# Open the image
img = Image.open('Panda.png')

#resize image
width = 72
height = 72
img = img.resize((width, height), Image.ANTIALIAS)

#black and white
img = img.convert('1')

#saving
img.save('BWResized.png')

# Write the image to an array, using numpy
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

# Import shit
import numpy as np
import scipy
from PIL import Image
import codecs, json

# Debug
print('Hello World!')

# Open the image
img = Image.open('SmallEye.jpeg')
#black and white
img = img.convert('1')
img.save('BWLego.png')
# Write the image to an array, using numpy
arr = np.array(img)
# Example of finding a specific pixel and printing it
#print(arr[0, 5])
# Printing the entire array
#for x in arr:
#    print (x)

# Next, write the array to a file

b = arr.tolist() # nested lists with same data, indices

build = {}
build['image'] = b
file_path = "work.json" ## your path variable

json.dump(build, open(file_path, 'w'))

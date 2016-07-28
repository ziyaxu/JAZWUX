import numpy
import scipy
from PIL import Image

im = Image.open('Small.png')

size = im.size

RGB = []

pix = im.load()

for x in range (0,size[0]):
    build = []
    for y in range (0,size[1]):
         build.append(pix[x,y])
    RGB.append(build)

print(RGB)

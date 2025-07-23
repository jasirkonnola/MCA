import numpy
def translationMatrix(tx=0, ty=0, tz=0):
    return numpy.matrix([[1,0,0,tx],
                         [0,1,0,ty],
                         [0,0,1,tz],
                         [0,0,0,1]])
matrix=translationMatrix(1,1,1)
print("Translation matrix:")
print(matrix)
print()

def rotationMatrixX(degree):
    theta = numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[1,0,0,0],
                         [0,c,-s,0],
                         [0,s,c,0],
                         [0,0,0,1]])
matrix=rotationMatrixX(30)
print("Rotation Matrix about X axis:")
print(matrix)
print()

def rotationMatrixY(degree):
    theta = numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[c,0,s,0],
                         [0,1,0,0],
                         [-s,0,c,0],
                         [0,0,0,1]])
matrix=rotationMatrixY(30)
print("Rotation Matrix about Y axis:")
print(matrix)
print()

def rotationMatrixz(degree):
    theta = numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[c,-s,0,0],
                         [s,c,0,0],
                         [0,0,1,0],
                         [0,0,0,1]])
matrix=rotationMatrixZ(30)
print("Rotation Matrix about Z axis:")
print(matrix)
print()


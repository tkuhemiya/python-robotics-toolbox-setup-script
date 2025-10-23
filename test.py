import math
import numpy as np
from scipy import linalg, optimize
import matplotlib.pyplot as plt
from spatialmath import *
from spatialmath.base import *
from spatialmath.base import sym
from spatialgeometry import *
import roboticstoolbox as rtb
import swift 

env = swift.Swift()
env.launch()

panda = rtb.models.Panda()
env.add(panda)
env.hold()

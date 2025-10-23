import math
import numpy as np
import matplotlib.pyplot as plt
from scipy import linalg, optimize
from spatialmath import SE3
from spatialgeometry import *
import swift
import roboticstoolbox as rtb

robot = rtb.models.Panda()
print(robot)

Te = robot.fkine(robot.qr)
print(Te)

Tep = SE3.Trans(0.6, -0.3, 0.1) * SE3.OA([0, 1, 0], [0, 0, -1])

sol = robot.ik_LM(Tep)
q_pickup = sol[0]

print(q_pickup)
print(robot.fkine(q_pickup))

qt = rtb.jtraj(robot.qr, q_pickup, 50)

robot.plot(qt.q, backend='pyplot', movie='panda1.gif')


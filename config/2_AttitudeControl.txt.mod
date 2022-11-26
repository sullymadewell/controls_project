# Attitude control

INCLUDE QuadPhysicalParams.txt

# simulation setup
Sim.RunMode = Repeat
Sim.EndTime = 10
Sim.Vehicle1 = Quad

# Controller selection
Quad.ControlType = QuadControl
Quad.ControlConfig = QuadControlParams

# reference trajectory (just the starting position)
QuadControlParams.Trajectory=0,0,-1

# initial conditions
Quad.InitialPos=0,0,-0.9
Quad.InitialVel=0,0,0
Quad.InitialYPR=0,0,0
Quad.InitialOmega=0,0,0

# graphing commands
# Commands.1=AddGraph1.Quad.Roll
# Commands.2=AddGraph1.AbsThreshold(Quad.Roll,0.03,0.1)
# Commands.3=AddGraph2.Quad.Omega.X
# Commands.4=AddGraph2.AbsThreshold(Quad.Omega.X,3,0.1)
# Commands.5=AddGraph1.WindowThreshold(Quad.Roll,0.025,0.75)
# Commands.6=AddGraph2.WindowThreshold(Quad.Omega.X,2.5,0.75)
Commands.1=AddGraph1.Quad.Pos.Z
Commands.2=AddGraph1.AbsThreshold(Quad.Pos.Z,-1.5,0)
Commands.3=AddGraph2.Quad.Vel.Z
Commands.4=AddGraph2.AbsThreshold(Quad.Vel.Z,-10,0)

INCLUDE QuadControlParams.txt
INCLUDE Simulation.txt

# make sure position control is turned off here
# [QuadControlParams]
# kpPosXY = 0
# kpPosZ = 0
# kpVelXY = 0
# kpVelZ = 0

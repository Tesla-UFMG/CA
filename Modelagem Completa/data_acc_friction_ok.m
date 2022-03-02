clear;

EV.NumberOfWheelsPerAxle = 2;
EV.Mass = 329;
EV.FrontAxlePositionfromCG = 0.775;
EV.RearAxlePositionfromCG = 0.775;
EV.WheelBase = EV.FrontAxlePositionfromCG + EV.RearAxlePositionfromCG;
EV.HeightCG = 0.5;
EV.InitialLongPosition =0;
EV.InitialLongVel = 0;%9.1;             %[m/s]
EV.TrackWidth = [1.15 1.15];
EV.InitialLatPosition = 0;
EV.InitialLatVel = 0;
EV.YawMomentInertia = 750;
EV.InitialYawAngle = 0;
EV.InitialYawRate = 0;
EV.FrontalArea = 0.75;                  %[m²]
EV.LongDragCoeff = 0.86;

WHL.DampingCoefficient = 0.001;
WHL.WheelInertia = 1.0;%0.8
WHL.RelaxationLength = 0.15;
WHL.LoadedRadius = 0.25;
WHL.UnloadedRadius = 0.26035;
WHL.WheelInitAngVel = EV.InitialLongVel/0.25;
    
MTR.Speed  = [0 461 565 670 775 880 942 943];
MTR.Torque = [13.1	13.1	10.6	9.0     7.7     6.8     6.4     0.1];
MTR.Overpower = 3.0;
MTR.MaxTorque = 13.1*MTR.Overpower;

EMP.Gain = 3.0;
EMP.TimeConstant = 0.02;

CTRL.Kp = 0;
CTRL.Ki = 0;

GND.Friction = ones(4,1).*0.8; %2.5 

TME.Simulation = 20;





MNVR.Input = zeros(1, 64);
MNVR.Input(1:5) = 0;
MNVR.Input(6) =0.23*pi*.5;
MNVR.Input(7:52) =0.23*pi;
MNVR.Input(53) = 0.23*pi*.5;
MNVR.Input(55:64) = 0;

MNVR.InitStepTime  = 1.75;
MNVR.InitStepValue = 0.23*pi;

MNVR.FinalStepTime  = 14.05;
MNVR.FinalStepValue = -0.23*pi;




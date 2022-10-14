% Simscape(TM) Multibody(TM) version: 7.4

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:g
g = 9.80665;
SamplingTime = 0.01;

%%%VariableName:field
field.Width = 10400; %millimeter
field.Height = 7400;  %millimeters
field.Color = [0 0.5 0.01]; %darkGreen

field.walls.Width1 = 9600; %millimeter
field.walls.Length1 = 20; %millimeter
field.walls.Height1 = 100; %millimeter
field.walls.axis1 = [0 0 0]; %degree
field.walls.transform1 = [0 -3300 5]; %millimeter
field.walls.axis2 = [0 0 0]; %degree
field.walls.transform2 = [0 3300 5]; %millimeter

field.walls.Width2 = 6600; %millimeter
field.walls.Length2 = 20; %millimeter
field.walls.Height2 = 100; %millimeter
field.walls.axis3 = [0 1 0]; %degree
field.walls.transform3 = [4800 0 5]; %millimeter
field.walls.axis4 = [0 1 0]; %degree
field.walls.transform4 = [-4800 0 5]; %millimeter

field.goals.Width1 = 150; %millimeter
field.goals.Length1 = 10; %millimeter
field.goals.Height1 = 150; %millimeter
field.goals.axis1 = [0 0 0]; %degree
field.goals.transform1 = [-4575 505 75]; %millimeter
field.goals.axis2 = [0 0 0]; %degree
field.goals.transform2 = [-4575 -505 75]; %millimeter
field.goals.transform3 = [4575 505 75]; %millimeter
field.goals.transform4 = [4575 -505 75]; %millimeter

field.goals.Width2 = 1000; %millimeter
field.goals.Length2 = 10; %millimeter
field.goals.Height2 = 150; %millimeter
field.goals.transform5 = [4645 0 75]; %millimeter
field.goals.transform6 = [-4645 0 75]; %millimeter

field.lines.Width1 = 6020; %millimeter
field.lines.Length1 = 10; %millimeter
field.lines.Height1 = 2; %millimeter
field.lines.Width2 = 9020; %millimeter
field.lines.Length2 = 10; %millimeter
field.lines.Height2 = 1; %millimeter
field.lines.transform1 = [0 -3005 -10]; %millimeter
field.lines.transform2 = [0 3005 -10]; %millimeter
field.lines.transform3 = [4510 0 -10]; %millimeter
field.lines.transform4 = [-4510 0 -10]; %millimeter

field.lines.Width3 = 1010; %millimeter
field.lines.Length3 = 10; %millimeter
field.lines.Height3 = 1; %millimeter
field.lines.Width4 = 2000; %millimeter
field.lines.Length4 = 10; %millimeter
field.lines.Height4 = 1; %millimeter

field.lines.Radius1 = 1000; %millimeter
field.lines.Radius2 = 1020; %millimeter
field.lines.Height = 1;

%%%VariableName:wheel
wheel.contact.stiffness = 1e7;  % N/m
wheel.contact.damping = 1e3;    % N/(m/s)
wheel.contact.transitionRegion = 0.1; % mm
wheel.contact.staticFriction = 0.5;
wheel.contact.dynamicFriction = 0.3;
wheel.contact.criticalVelocity = 1e-3; % m/s

wheel.radius       = 0.2; % m
wheel.width        = 0.25;% m
wheel.axleRadius   = 0.05;% m
wheel.resolution   = 30;  % pts/rev
wheel.color        = [0.6 0.6 0.6];
wheel.density      = 7780;% kg/m^3

tire.radius        = 0.4; % m
tire.color         = [0.1 0.1 0.1];
tire.density       = 1500;% kg/m^3

%%%VariableName:control
control.Kp = 0.08;
control.Ki = 0.3;
control.tf.Numerator = [0.0015 0.0029 0.0015];
control.tf.Denominator = [1 -1.8890 0.8949];
control.tf.Ts = 0.01;
control.tf.df = 0.3;
control.tf.dm = 1000;
control.ff = tf(control.tf.Numerator,control.tf.Denominator,control.tf.Ts);

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(247).translation = [0.0 0.0 0.0];
smiData.RigidTransform(247).angle = 0.0;
smiData.RigidTransform(247).axis = [0.0 0.0 0.0];
smiData.RigidTransform(247).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0.0 0.0 -4.2];  % mm
smiData.RigidTransform(1).angle = 5.4407543682016804e-16;  % rad
smiData.RigidTransform(1).axis = [-0.84648481565632472 -0.53241286316474146 1.2260179688809382e-16];
smiData.RigidTransform(1).ID = 'B[RoboCinWheel_simplified:1:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [55.598830922960992 -32.099999999999994 19.5];  % mm
smiData.RigidTransform(2).angle = 1.8234765819369747;  % rad
smiData.RigidTransform(2).axis = [0.77459666924148352 0.44721359549995759 0.44721359549995815];
smiData.RigidTransform(2).ID = 'F[RoboCinWheel_simplified:1:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0.0 0.0 -4.2];  % mm
smiData.RigidTransform(3).angle = 1.5702638703594051e-16;  % rad
smiData.RigidTransform(3).axis = [-1 0 -0];
smiData.RigidTransform(3).ID = 'B[RoboCinWheel_simplified:2:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [45.396255352176354 45.396255352176382 19.5];  % mm
smiData.RigidTransform(4).angle = 2.5935642459694801;  % rad
smiData.RigidTransform(4).axis = [0.28108463771482062 0.678598344545847 0.67859834454584678];
smiData.RigidTransform(4).ID = 'F[RoboCinWheel_simplified:2:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0.0 0.0 -4.2];  % mm
smiData.RigidTransform(5).angle = 1.1102230246251563e-16;  % rad
smiData.RigidTransform(5).axis = [-0 -1 0];
smiData.RigidTransform(5).ID = 'B[RoboCinWheel_simplified:3:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-55.598830922960957 -32.100000000000001 19.500000000000014];  % mm
smiData.RigidTransform(6).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(6).axis = [-0.37796447300922764 -0.65465367070797698 0.65465367070797698];
smiData.RigidTransform(6).ID = 'F[RoboCinWheel_simplified:3:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0.0 0.0 -4.2];  % mm z -14.199999999999973
smiData.RigidTransform(7).angle = 4.9653727879937527e-16;  % rad
smiData.RigidTransform(7).axis = [-0.88478379339620006 0.46600175851967618 -1.0236384222759262e-16];
smiData.RigidTransform(7).ID = 'B[RoboCinWheel_simplified:4:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-45.396255352176361 45.396255352176411 19.499999999999996];  % mm
smiData.RigidTransform(8).angle = 1.7177715174584023;  % rad
smiData.RigidTransform(8).axis = [-0.86285620946101638 -0.35740674433659381 0.35740674433659386];
smiData.RigidTransform(8).ID = 'F[RoboCinWheel_simplified:4:-:Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [4.4408920985006262e-15 -2.2204460492503131e-15 -8.8817841970012523e-15];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'AssemblyGround[RoboCinWheel_simplified:1:wheel_simplified2:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [4.4408920985006262e-15 -2.2204460492503131e-15 -2.0000000000000107];  % mm
smiData.RigidTransform(10).angle = 1.5743521549564063;  % rad
smiData.RigidTransform(10).axis = [-0.059524966254721069 0.99645047884214932 0.059524966254721069];
smiData.RigidTransform(10).ID = 'AssemblyGround[RoboCinWheel_simplified:1:gear_z60_26106000_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [-2.2204460492503131e-15 0 5.5511151231257827e-15];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:1:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-2.2204460492503131e-15 0 5.5511151231257827e-15];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:1:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [6.9577291178464566 19.116203641965161 3.8999999999999879];  % mm
smiData.RigidTransform(13).angle = 1.670766202964532;  % rad
smiData.RigidTransform(13).axis = [0.59250497814787029 0.7471219663318468 0.3012417937378985];
smiData.RigidTransform(13).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [4.4408920985006262e-15 0 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(14).angle = 0;  % rad
smiData.RigidTransform(14).axis = [0 0 0];
smiData.RigidTransform(14).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:2:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [4.4408920985006262e-15 0 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:2:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [13.076253418935197 15.583671989688312 3.8999999999999879];  % mm
smiData.RigidTransform(16).angle = 1.5750828090518714;  % rad
smiData.RigidTransform(16).axis = [0.6900848503105137 0.72077369932349589 0.065331261547887112];
smiData.RigidTransform(16).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [-2.9143354396410359e-15 1.7763568394002505e-14 0];  % mm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:3:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-2.9143354396410359e-15 1.7763568394002505e-14 0];  % mm
smiData.RigidTransform(18).angle = 0;  % rad
smiData.RigidTransform(18).axis = [0 0 0];
smiData.RigidTransform(18).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:3:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [17.617588572753306 10.171519504951174 3.9000000000000057];  % mm
smiData.RigidTransform(19).angle = 1.5816505179983582;  % rad
smiData.RigidTransform(19).axis = [0.90848684222222698 0.40486321555322907 0.10362159138416123];
smiData.RigidTransform(19).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [-4.5796699765787707e-15 0 0];  % mm
smiData.RigidTransform(20).angle = 0;  % rad
smiData.RigidTransform(20).axis = [0 0 0];
smiData.RigidTransform(20).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:4:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [-4.5796699765787707e-15 0 0];  % mm
smiData.RigidTransform(21).angle = 0;  % rad
smiData.RigidTransform(21).axis = [0 0 0];
smiData.RigidTransform(21).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:4:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [20.03398253678164 3.532531652276818 3.9000000000000057];  % mm
smiData.RigidTransform(22).angle = 1.5719170830772065;  % rad
smiData.RigidTransform(22).axis = [0.97789455582207863 0.206404303089295 -0.033458950368503292];
smiData.RigidTransform(22).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [2.2204460492503131e-15 -1.7763568394002505e-14 0];  % mm
smiData.RigidTransform(23).angle = 0;  % rad
smiData.RigidTransform(23).axis = [0 0 0];
smiData.RigidTransform(23).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:5:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [2.2204460492503131e-15 -1.7763568394002505e-14 0];  % mm
smiData.RigidTransform(24).angle = 0;  % rad
smiData.RigidTransform(24).axis = [0 0 0];
smiData.RigidTransform(24).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:5:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [20.033982536781675 -3.5325316522768269 3.8999999999999879];  % mm
smiData.RigidTransform(25).angle = 1.6152589977483938;  % rad
smiData.RigidTransform(25).axis = [0.97778820690186097 0.037064146659050272 -0.20629219926133849];
smiData.RigidTransform(25).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [4.4408920985006262e-15 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(26).angle = 0;  % rad
smiData.RigidTransform(26).axis = [0 0 0];
smiData.RigidTransform(26).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:6:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [4.4408920985006262e-15 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(27).angle = 0;  % rad
smiData.RigidTransform(27).axis = [0 0 0];
smiData.RigidTransform(27).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:6:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [17.617588572753299 -10.171519504951201 3.8999999999999879];  % mm
smiData.RigidTransform(28).angle = 1.587194190003981;  % rad
smiData.RigidTransform(28).axis = [0.91544669679333768 -0.38187006336528106 -0.12701417257756312];
smiData.RigidTransform(28).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [8.8817841970012523e-15 8.8817841970012523e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(29).angle = 0;  % rad
smiData.RigidTransform(29).axis = [0 0 0];
smiData.RigidTransform(29).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:7:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [8.8817841970012523e-15 8.8817841970012523e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(30).angle = 0;  % rad
smiData.RigidTransform(30).axis = [0 0 0];
smiData.RigidTransform(30).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:7:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [13.076253418935185 -15.583671989688323 3.8999999999999879];  % mm
smiData.RigidTransform(31).angle = 1.5709913186482833;  % rad
smiData.RigidTransform(31).axis = [0.63196632131946295 -0.77487006322363516 0.013962587072061524];
smiData.RigidTransform(31).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [8.8817841970012523e-15 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(32).angle = 0;  % rad
smiData.RigidTransform(32).axis = [0 0 0];
smiData.RigidTransform(32).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:8:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [8.8817841970012523e-15 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(33).angle = 0;  % rad
smiData.RigidTransform(33).axis = [0 0 0];
smiData.RigidTransform(33).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:8:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [6.9577291178464771 -19.116203641965143 3.8999999999999879];  % mm
smiData.RigidTransform(34).angle = 1.5709582937240223;  % rad
smiData.RigidTransform(34).axis = [0.35392289703822161 -0.93518802507981946 -0.012725592299738565];
smiData.RigidTransform(34).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:8]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [-1.7763568394002505e-14 0 -1.1102230246251565e-15];  % mm
smiData.RigidTransform(35).angle = 0;  % rad
smiData.RigidTransform(35).axis = [0 0 0];
smiData.RigidTransform(35).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:9:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [-1.7763568394002505e-14 0 -1.1102230246251565e-15];  % mm
smiData.RigidTransform(36).angle = 0;  % rad
smiData.RigidTransform(36).axis = [0 0 0];
smiData.RigidTransform(36).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:9:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [-2.2204460492503131e-15 -20.343039009902384 3.8999999999999879];  % mm
smiData.RigidTransform(37).angle = 1.5708258541254096;  % rad
smiData.RigidTransform(37).axis = [-0.0054338254178083354 -0.9999704731054101 0.0054338254178083328];
smiData.RigidTransform(37).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:9]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [0 4.4408920985006262e-15 5.5511151231257827e-15];  % mm
smiData.RigidTransform(38).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(38).axis = [1 0 0];
smiData.RigidTransform(38).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:10:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [0 4.4408920985006262e-15 5.5511151231257827e-15];  % mm
smiData.RigidTransform(39).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(39).axis = [1 0 0];
smiData.RigidTransform(39).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:10:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [-6.9577291178465037 -19.11620364196515 3.8999999999999879];  % mm
smiData.RigidTransform(40).angle = 1.5746678634045226;  % rad
smiData.RigidTransform(40).axis = [-0.28234223728058488 -0.95730155386104088 -0.062101497748689297];
smiData.RigidTransform(40).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:10]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [-8.8817841970012523e-15 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(41).angle = 0;  % rad
smiData.RigidTransform(41).axis = [0 0 0];
smiData.RigidTransform(41).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:11:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [-8.8817841970012523e-15 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(42).angle = 0;  % rad
smiData.RigidTransform(42).axis = [0 0 0];
smiData.RigidTransform(42).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:11:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [-20.033982536781664 -3.5325316522768291 3.9000000000000057];  % mm
smiData.RigidTransform(43).angle = 1.5709586651174519;  % rad
smiData.RigidTransform(43).axis = [-0.98686020153027232 -0.16107337043484377 0.012740171599709501];
smiData.RigidTransform(43).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:11]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [8.8817841970012523e-15 -8.8817841970012523e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(44).angle = 0;  % rad
smiData.RigidTransform(44).axis = [0 0 0];
smiData.RigidTransform(44).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:12:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [8.8817841970012523e-15 -8.8817841970012523e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(45).angle = 0;  % rad
smiData.RigidTransform(45).axis = [0 0 0];
smiData.RigidTransform(45).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:12:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [-17.617588572753284 -10.171519504951194 3.8999999999999879];  % mm
smiData.RigidTransform(46).angle = 2.3566507137068076;  % rad
smiData.RigidTransform(46).axis = [-0.036647938852638874 -0.76441658405531132 -0.64368021143970422];
smiData.RigidTransform(46).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:12]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [8.8817841970012523e-15 -4.4408920985006262e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(47).angle = 0;  % rad
smiData.RigidTransform(47).axis = [0 0 0];
smiData.RigidTransform(47).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:13:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [8.8817841970012523e-15 -4.4408920985006262e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(48).angle = 0;  % rad
smiData.RigidTransform(48).axis = [0 0 0];
smiData.RigidTransform(48).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:13:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(49).translation = [-13.076253418935186 -15.583671989688302 3.8999999999999879];  % mm
smiData.RigidTransform(49).angle = 1.6087389818669415;  % rad
smiData.RigidTransform(49).axis = [-0.47240264427383238 -0.86040022928977755 -0.19117318619824594];
smiData.RigidTransform(49).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:13]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(50).translation = [0 -6.6613381477509392e-15 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(50).angle = 8.3266726846886741e-17;  % rad
smiData.RigidTransform(50).axis = [-1 0 0];
smiData.RigidTransform(50).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:14:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(51).translation = [0 -6.6613381477509392e-15 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(51).angle = 8.3266726846886741e-17;  % rad
smiData.RigidTransform(51).axis = [-1 0 0];
smiData.RigidTransform(51).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:14:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(52).translation = [-17.617588572753306 10.171519504951188 3.8999999999999879];  % mm
smiData.RigidTransform(52).angle = 2.582499565057665;  % rad
smiData.RigidTransform(52).axis = [-0.58727711514840253 -0.44306692382730073 -0.67734576918526834];
smiData.RigidTransform(52).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:14]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(53).translation = [-1.7763568394002505e-14 2.2204460492503131e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(53).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(53).axis = [-1 0 0];
smiData.RigidTransform(53).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:15:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(54).translation = [-1.7763568394002505e-14 2.2204460492503131e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(54).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(54).axis = [-1 0 0];
smiData.RigidTransform(54).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:15:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(55).translation = [-13.076253418935213 15.583671989688291 3.8999999999999879];  % mm
smiData.RigidTransform(55).angle = 1.6122803866227109;  % rad
smiData.RigidTransform(55).axis = [-0.46379520998842744 0.86317628086817511 0.19955127496053673];
smiData.RigidTransform(55).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:15]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(56).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(56).angle = 0;  % rad
smiData.RigidTransform(56).axis = [0 0 0];
smiData.RigidTransform(56).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:16:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(57).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(57).angle = 0;  % rad
smiData.RigidTransform(57).axis = [0 0 0];
smiData.RigidTransform(57).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:16:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(58).translation = [-20.033982536781629 3.532531652276818 3.9000000000000057];  % mm
smiData.RigidTransform(58).angle = 1.587218280562366;  % rad
smiData.RigidTransform(58).axis = [-0.94669492629239571 0.29599459563889574 0.12710592387769371];
smiData.RigidTransform(58).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:16]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(59).translation = [1.7763568394002505e-14 0 -3.3306690738754696e-15];  % mm
smiData.RigidTransform(59).angle = 8.3266726846886741e-17;  % rad
smiData.RigidTransform(59).axis = [0 -1 0];
smiData.RigidTransform(59).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:17:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(60).translation = [1.7763568394002505e-14 0 -3.3306690738754696e-15];  % mm
smiData.RigidTransform(60).angle = 8.3266726846886741e-17;  % rad
smiData.RigidTransform(60).axis = [0 -1 0];
smiData.RigidTransform(60).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:17:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(61).translation = [-6.9577291178464673 19.116203641965129 3.8999999999999879];  % mm
smiData.RigidTransform(61).angle = 1.570834703040304;  % rad
smiData.RigidTransform(61).axis = [-0.34782816724703663 0.93753783459487483 -0.0061947375021516394];
smiData.RigidTransform(61).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:17]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(62).translation = [8.8817841970012523e-15 0 0];  % mm
smiData.RigidTransform(62).angle = 0;  % rad
smiData.RigidTransform(62).axis = [0 0 0];
smiData.RigidTransform(62).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:18:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(63).translation = [8.8817841970012523e-15 0 0];  % mm
smiData.RigidTransform(63).angle = 0;  % rad
smiData.RigidTransform(63).axis = [0 0 0];
smiData.RigidTransform(63).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:18:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(64).translation = [1.1102230246251565e-14 20.343039009902384 3.8999999999999879];  % mm
smiData.RigidTransform(64).angle = 1.5765453069752788;  % rad
smiData.RigidTransform(64).axis = [0.075604808196371262 0.9942674820968348 0.075604808196371276];
smiData.RigidTransform(64).ID = 'AssemblyGround[RoboCinWheel_simplified:1:Roller:18]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(65).translation = [4.4408920985006262e-15 0 0];  % mm
smiData.RigidTransform(65).angle = 0;  % rad
smiData.RigidTransform(65).axis = [0 0 0];
smiData.RigidTransform(65).ID = 'AssemblyGround[RoboCinWheel_simplified:2:wheel_simplified2:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(66).translation = [0 4.4408920985006262e-15 -2.0000000000000107];  % mm
smiData.RigidTransform(66).angle = 1.5743521549564063;  % rad
smiData.RigidTransform(66).axis = [-0.059524966254721118 0.99645047884214932 0.059524966254721069];
smiData.RigidTransform(66).ID = 'AssemblyGround[RoboCinWheel_simplified:2:gear_z60_26106000_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(67).translation = [0 -8.8817841970012523e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(67).angle = 0;  % rad
smiData.RigidTransform(67).axis = [0 0 0];
smiData.RigidTransform(67).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:1:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(68).translation = [0 -8.8817841970012523e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(68).angle = 0;  % rad
smiData.RigidTransform(68).axis = [0 0 0];
smiData.RigidTransform(68).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:1:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(69).translation = [6.9577291178464566 19.116203641965171 3.9000000000000057];  % mm
smiData.RigidTransform(69).angle = 1.6707662029645323;  % rad
smiData.RigidTransform(69).axis = [0.59250497814787007 0.74712196633184691 0.30124179373789844];
smiData.RigidTransform(69).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(70).translation = [0 0 -1.6653345369377348e-15];  % mm
smiData.RigidTransform(70).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(70).axis = [0 0 -1];
smiData.RigidTransform(70).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:2:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(71).translation = [0 0 -1.6653345369377348e-15];  % mm
smiData.RigidTransform(71).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(71).axis = [0 0 -1];
smiData.RigidTransform(71).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:2:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(72).translation = [13.076253418935194 15.583671989688316 3.9000000000000057];  % mm
smiData.RigidTransform(72).angle = 1.5750828090518709;  % rad
smiData.RigidTransform(72).axis = [0.69008485031051392 0.720773699323496 0.065331261547887112];
smiData.RigidTransform(72).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(73).translation = [-4.4408920985006262e-15 0 6.6613381477509392e-15];  % mm
smiData.RigidTransform(73).angle = 0;  % rad
smiData.RigidTransform(73).axis = [0 0 0];
smiData.RigidTransform(73).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:3:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(74).translation = [-4.4408920985006262e-15 0 6.6613381477509392e-15];  % mm
smiData.RigidTransform(74).angle = 0;  % rad
smiData.RigidTransform(74).axis = [0 0 0];
smiData.RigidTransform(74).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:3:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(75).translation = [17.617588572753309 10.171519504951176 3.8999999999999879];  % mm
smiData.RigidTransform(75).angle = 1.5816505179983582;  % rad
smiData.RigidTransform(75).axis = [0.90848684222222698 0.40486321555322918 0.10362159138416127];
smiData.RigidTransform(75).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(76).translation = [0 0 1.1102230246251565e-15];  % mm
smiData.RigidTransform(76).angle = 0;  % rad
smiData.RigidTransform(76).axis = [0 0 0];
smiData.RigidTransform(76).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:4:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(77).translation = [0 0 1.1102230246251565e-15];  % mm
smiData.RigidTransform(77).angle = 0;  % rad
smiData.RigidTransform(77).axis = [0 0 0];
smiData.RigidTransform(77).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:4:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(78).translation = [20.03398253678164 3.5325316522768171 3.8999999999999879];  % mm
smiData.RigidTransform(78).angle = 1.5719170830772065;  % rad
smiData.RigidTransform(78).axis = [0.97789455582207863 0.206404303089295 -0.033458950368503257];
smiData.RigidTransform(78).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(79).translation = [-6.6613381477509392e-15 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(79).angle = 0;  % rad
smiData.RigidTransform(79).axis = [0 0 0];
smiData.RigidTransform(79).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:5:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(80).translation = [-6.6613381477509392e-15 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(80).angle = 0;  % rad
smiData.RigidTransform(80).axis = [0 0 0];
smiData.RigidTransform(80).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:5:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(81).translation = [20.033982536781675 -3.5325316522768246 3.9000000000000057];  % mm
smiData.RigidTransform(81).angle = 1.6152589977483935;  % rad
smiData.RigidTransform(81).axis = [0.97778820690186097 0.037064146659050258 -0.20629219926133863];
smiData.RigidTransform(81).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(82).translation = [-4.4408920985006262e-15 8.8817841970012523e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(82).angle = 0;  % rad
smiData.RigidTransform(82).axis = [0 0 0];
smiData.RigidTransform(82).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:6:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(83).translation = [-4.4408920985006262e-15 8.8817841970012523e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(83).angle = 0;  % rad
smiData.RigidTransform(83).axis = [0 0 0];
smiData.RigidTransform(83).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:6:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(84).translation = [17.617588572753302 -10.171519504951192 3.9000000000000057];  % mm
smiData.RigidTransform(84).angle = 1.587194190003981;  % rad
smiData.RigidTransform(84).axis = [0.91544669679333768 -0.38187006336528118 -0.12701417257756314];
smiData.RigidTransform(84).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(85).translation = [-8.8817841970012523e-15 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(85).angle = 0;  % rad
smiData.RigidTransform(85).axis = [0 0 0];
smiData.RigidTransform(85).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:7:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(86).translation = [-8.8817841970012523e-15 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(86).angle = 0;  % rad
smiData.RigidTransform(86).axis = [0 0 0];
smiData.RigidTransform(86).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:7:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(87).translation = [13.076253418935181 -15.583671989688312 3.8999999999999879];  % mm
smiData.RigidTransform(87).angle = 1.5709913186482833;  % rad
smiData.RigidTransform(87).axis = [0.63196632131946306 -0.77487006322363516 0.013962587072061636];
smiData.RigidTransform(87).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(88).translation = [0 -7.7715611723760958e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(88).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(88).axis = [0 0 -1];
smiData.RigidTransform(88).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:8:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(89).translation = [0 -7.7715611723760958e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(89).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(89).axis = [0 0 -1];
smiData.RigidTransform(89).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:8:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(90).translation = [6.9577291178464833 -19.116203641965136 3.9000000000000057];  % mm
smiData.RigidTransform(90).angle = 1.5709582937240223;  % rad
smiData.RigidTransform(90).axis = [0.35392289703822155 -0.93518802507981968 -0.012725592299738591];
smiData.RigidTransform(90).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:8]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(91).translation = [0 -4.4408920985006262e-15 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(91).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(91).axis = [1 0 0];
smiData.RigidTransform(91).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:9:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(92).translation = [0 -4.4408920985006262e-15 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(92).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(92).axis = [1 0 0];
smiData.RigidTransform(92).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:9:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(93).translation = [6.6613381477509392e-15 -20.34303900990238 3.9000000000000057];  % mm
smiData.RigidTransform(93).angle = 1.5708258541254096;  % rad
smiData.RigidTransform(93).axis = [-0.0054338254178083285 -0.9999704731054101 0.0054338254178083641];
smiData.RigidTransform(93).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:9]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(94).translation = [0 0 0];  % mm
smiData.RigidTransform(94).angle = 0;  % rad
smiData.RigidTransform(94).axis = [0 0 0];
smiData.RigidTransform(94).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:10:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(95).translation = [0 0 0];  % mm
smiData.RigidTransform(95).angle = 0;  % rad
smiData.RigidTransform(95).axis = [0 0 0];
smiData.RigidTransform(95).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:10:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(96).translation = [-6.9577291178465046 -19.116203641965143 3.9000000000000057];  % mm
smiData.RigidTransform(96).angle = 1.5746678634045228;  % rad
smiData.RigidTransform(96).axis = [-0.28234223728058494 -0.95730155386104088 -0.06210149774868938];
smiData.RigidTransform(96).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:10]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(97).translation = [8.8817841970012523e-15 1.7763568394002505e-14 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(97).angle = 0;  % rad
smiData.RigidTransform(97).axis = [0 0 0];
smiData.RigidTransform(97).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:11:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(98).translation = [8.8817841970012523e-15 1.7763568394002505e-14 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(98).angle = 0;  % rad
smiData.RigidTransform(98).axis = [0 0 0];
smiData.RigidTransform(98).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:11:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(99).translation = [-20.033982536781664 -3.5325316522768224 3.9000000000000057];  % mm
smiData.RigidTransform(99).angle = 1.5709586651174521;  % rad
smiData.RigidTransform(99).axis = [-0.98686020153027232 -0.16107337043484363 0.012740171599709416];
smiData.RigidTransform(99).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:11]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(100).translation = [0 -8.8817841970012523e-15 7.7715611723760958e-15];  % mm
smiData.RigidTransform(100).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(100).axis = [0 0 -1];
smiData.RigidTransform(100).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:12:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(101).translation = [0 -8.8817841970012523e-15 7.7715611723760958e-15];  % mm
smiData.RigidTransform(101).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(101).axis = [0 0 -1];
smiData.RigidTransform(101).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:12:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(102).translation = [-17.617588572753295 -10.171519504951192 3.9000000000000057];  % mm
smiData.RigidTransform(102).angle = 2.3566507137068076;  % rad
smiData.RigidTransform(102).axis = [-0.036647938852638874 -0.76441658405531132 -0.64368021143970422];
smiData.RigidTransform(102).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:12]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(103).translation = [8.8817841970012523e-15 8.8817841970012523e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(103).angle = 0;  % rad
smiData.RigidTransform(103).axis = [0 0 0];
smiData.RigidTransform(103).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:13:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(104).translation = [8.8817841970012523e-15 8.8817841970012523e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(104).angle = 0;  % rad
smiData.RigidTransform(104).axis = [0 0 0];
smiData.RigidTransform(104).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:13:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(105).translation = [-13.076253418935188 -15.583671989688304 3.9000000000000057];  % mm
smiData.RigidTransform(105).angle = 1.6087389818669415;  % rad
smiData.RigidTransform(105).axis = [-0.47240264427383244 -0.86040022928977755 -0.19117318619824589];
smiData.RigidTransform(105).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:13]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(106).translation = [0 3.3306690738754696e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(106).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(106).axis = [1 0 0];
smiData.RigidTransform(106).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:14:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(107).translation = [0 3.3306690738754696e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(107).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(107).axis = [1 0 0];
smiData.RigidTransform(107).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:14:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(108).translation = [-17.617588572753313 10.17151950495119 3.9000000000000057];  % mm
smiData.RigidTransform(108).angle = 2.582499565057665;  % rad
smiData.RigidTransform(108).axis = [-0.58727711514840264 -0.44306692382730073 -0.67734576918526801];
smiData.RigidTransform(108).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:14]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(109).translation = [0 2.7755575615628914e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(109).angle = 0;  % rad
smiData.RigidTransform(109).axis = [0 0 0];
smiData.RigidTransform(109).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:15:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(110).translation = [0 2.7755575615628914e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(110).angle = 0;  % rad
smiData.RigidTransform(110).axis = [0 0 0];
smiData.RigidTransform(110).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:15:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(111).translation = [-13.076253418935206 15.583671989688304 3.9000000000000057];  % mm
smiData.RigidTransform(111).angle = 1.6122803866227113;  % rad
smiData.RigidTransform(111).axis = [-0.46379520998842738 0.86317628086817522 0.19955127496053682];
smiData.RigidTransform(111).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:15]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(112).translation = [0 0 0];  % mm
smiData.RigidTransform(112).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(112).axis = [0 -1 0];
smiData.RigidTransform(112).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:16:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(113).translation = [0 0 0];  % mm
smiData.RigidTransform(113).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(113).axis = [0 -1 0];
smiData.RigidTransform(113).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:16:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(114).translation = [-20.033982536781629 3.5325316522768224 3.9000000000000057];  % mm
smiData.RigidTransform(114).angle = 1.587218280562366;  % rad
smiData.RigidTransform(114).axis = [-0.94669492629239571 0.29599459563889574 0.12710592387769371];
smiData.RigidTransform(114).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:16]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(115).translation = [0 6.6613381477509392e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(115).angle = 0;  % rad
smiData.RigidTransform(115).axis = [0 0 0];
smiData.RigidTransform(115).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:17:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(116).translation = [0 6.6613381477509392e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(116).angle = 0;  % rad
smiData.RigidTransform(116).axis = [0 0 0];
smiData.RigidTransform(116).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:17:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(117).translation = [-6.9577291178464691 19.116203641965139 3.9000000000000057];  % mm
smiData.RigidTransform(117).angle = 1.5708347030403043;  % rad
smiData.RigidTransform(117).axis = [-0.34782816724703658 0.93753783459487483 -0.0061947375021516671];
smiData.RigidTransform(117).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:17]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(118).translation = [-1.7763568394002505e-14 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(118).angle = 0;  % rad
smiData.RigidTransform(118).axis = [0 0 0];
smiData.RigidTransform(118).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:18:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(119).translation = [-1.7763568394002505e-14 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(119).angle = 0;  % rad
smiData.RigidTransform(119).axis = [0 0 0];
smiData.RigidTransform(119).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:18:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(120).translation = [8.8817841970012523e-15 20.34303900990238 3.8999999999999879];  % mm
smiData.RigidTransform(120).angle = 1.5765453069752786;  % rad
smiData.RigidTransform(120).axis = [0.075604808196371331 0.9942674820968348 0.07560480819637129];
smiData.RigidTransform(120).ID = 'AssemblyGround[RoboCinWheel_simplified:2:Roller:18]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(121).translation = [0 0 0];  % mm
smiData.RigidTransform(121).angle = 0;  % rad
smiData.RigidTransform(121).axis = [0 0 0];
smiData.RigidTransform(121).ID = 'AssemblyGround[RoboCinWheel_simplified:3:wheel_simplified2:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(122).translation = [-2.2204460492503131e-15 0 -1.9999999999999929];  % mm
smiData.RigidTransform(122).angle = 1.5743521549564061;  % rad
smiData.RigidTransform(122).axis = [-0.059524966254721097 0.99645047884214932 0.059524966254721069];
smiData.RigidTransform(122).ID = 'AssemblyGround[RoboCinWheel_simplified:3:gear_z60_26106000_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(123).translation = [2.2204460492503131e-15 -1.7763568394002505e-14 2.2204460492503131e-15];  % mm
smiData.RigidTransform(123).angle = 0;  % rad
smiData.RigidTransform(123).axis = [0 0 0];
smiData.RigidTransform(123).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:1:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(124).translation = [2.2204460492503131e-15 -1.7763568394002505e-14 2.2204460492503131e-15];  % mm
smiData.RigidTransform(124).angle = 0;  % rad
smiData.RigidTransform(124).axis = [0 0 0];
smiData.RigidTransform(124).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:1:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(125).translation = [6.9577291178464566 19.116203641965161 3.9000000000000057];  % mm
smiData.RigidTransform(125).angle = 1.6707662029645323;  % rad
smiData.RigidTransform(125).axis = [0.59250497814787007 0.74712196633184691 0.30124179373789844];
smiData.RigidTransform(125).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(126).translation = [4.4408920985006262e-15 0 -3.3306690738754696e-15];  % mm
smiData.RigidTransform(126).angle = 0;  % rad
smiData.RigidTransform(126).axis = [0 0 0];
smiData.RigidTransform(126).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:2:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(127).translation = [4.4408920985006262e-15 0 -3.3306690738754696e-15];  % mm
smiData.RigidTransform(127).angle = 0;  % rad
smiData.RigidTransform(127).axis = [0 0 0];
smiData.RigidTransform(127).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:2:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(128).translation = [13.076253418935194 15.583671989688316 3.9000000000000057];  % mm
smiData.RigidTransform(128).angle = 1.5750828090518709;  % rad
smiData.RigidTransform(128).axis = [0.69008485031051392 0.720773699323496 0.065331261547887112];
smiData.RigidTransform(128).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(129).translation = [0 0 -4.8572257327350599e-15];  % mm
smiData.RigidTransform(129).angle = 0;  % rad
smiData.RigidTransform(129).axis = [0 0 0];
smiData.RigidTransform(129).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:3:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(130).translation = [0 0 -4.8572257327350599e-15];  % mm
smiData.RigidTransform(130).angle = 0;  % rad
smiData.RigidTransform(130).axis = [0 0 0];
smiData.RigidTransform(130).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:3:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(131).translation = [17.617588572753309 10.171519504951174 3.8999999999999879];  % mm
smiData.RigidTransform(131).angle = 1.5816505179983582;  % rad
smiData.RigidTransform(131).axis = [0.90848684222222698 0.40486321555322918 0.10362159138416137];
smiData.RigidTransform(131).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(132).translation = [-2.2204460492503131e-15 0 5.5511151231257827e-15];  % mm
smiData.RigidTransform(132).angle = 0;  % rad
smiData.RigidTransform(132).axis = [0 0 0];
smiData.RigidTransform(132).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:4:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(133).translation = [-2.2204460492503131e-15 0 5.5511151231257827e-15];  % mm
smiData.RigidTransform(133).angle = 0;  % rad
smiData.RigidTransform(133).axis = [0 0 0];
smiData.RigidTransform(133).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:4:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(134).translation = [20.033982536781636 3.5325316522768171 3.9000000000000057];  % mm
smiData.RigidTransform(134).angle = 1.5719170830772067;  % rad
smiData.RigidTransform(134).axis = [0.97789455582207863 0.20640430308929497 -0.033458950368503271];
smiData.RigidTransform(134).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(135).translation = [4.4408920985006262e-15 1.7763568394002505e-14 4.4408920985006262e-15];  % mm
smiData.RigidTransform(135).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(135).axis = [0 -1 0];
smiData.RigidTransform(135).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:5:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(136).translation = [4.4408920985006262e-15 1.7763568394002505e-14 4.4408920985006262e-15];  % mm
smiData.RigidTransform(136).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(136).axis = [0 -1 0];
smiData.RigidTransform(136).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:5:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(137).translation = [20.033982536781672 -3.5325316522768277 3.9000000000000057];  % mm
smiData.RigidTransform(137).angle = 1.6152589977483938;  % rad
smiData.RigidTransform(137).axis = [0.97778820690186108 0.037064146659050265 -0.20629219926133857];
smiData.RigidTransform(137).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(138).translation = [0 0 2.2204460492503131e-15];  % mm
smiData.RigidTransform(138).angle = 0;  % rad
smiData.RigidTransform(138).axis = [0 0 0];
smiData.RigidTransform(138).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:6:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(139).translation = [0 0 2.2204460492503131e-15];  % mm
smiData.RigidTransform(139).angle = 0;  % rad
smiData.RigidTransform(139).axis = [0 0 0];
smiData.RigidTransform(139).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:6:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(140).translation = [17.617588572753299 -10.171519504951206 3.9000000000000057];  % mm
smiData.RigidTransform(140).angle = 1.587194190003981;  % rad
smiData.RigidTransform(140).axis = [0.91544669679333768 -0.38187006336528118 -0.1270141725775632];
smiData.RigidTransform(140).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(141).translation = [-8.8817841970012523e-15 4.4408920985006262e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(141).angle = 0;  % rad
smiData.RigidTransform(141).axis = [0 0 0];
smiData.RigidTransform(141).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:7:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(142).translation = [-8.8817841970012523e-15 4.4408920985006262e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(142).angle = 0;  % rad
smiData.RigidTransform(142).axis = [0 0 0];
smiData.RigidTransform(142).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:7:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(143).translation = [13.076253418935176 -15.583671989688327 3.8999999999999879];  % mm
smiData.RigidTransform(143).angle = 1.5709913186482831;  % rad
smiData.RigidTransform(143).axis = [0.63196632131946295 -0.77487006322363516 0.013962587072061577];
smiData.RigidTransform(143).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(144).translation = [0 0 0];  % mm
smiData.RigidTransform(144).angle = 0;  % rad
smiData.RigidTransform(144).axis = [0 0 0];
smiData.RigidTransform(144).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:8:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(145).translation = [0 0 0];  % mm
smiData.RigidTransform(145).angle = 0;  % rad
smiData.RigidTransform(145).axis = [0 0 0];
smiData.RigidTransform(145).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:8:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(146).translation = [6.9577291178464744 -19.116203641965136 3.9000000000000057];  % mm
smiData.RigidTransform(146).angle = 1.5709582937240223;  % rad
smiData.RigidTransform(146).axis = [0.35392289703822155 -0.93518802507981968 -0.012725592299738648];
smiData.RigidTransform(146).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:8]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(147).translation = [0 -6.6613381477509392e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(147).angle = 0;  % rad
smiData.RigidTransform(147).axis = [0 0 0];
smiData.RigidTransform(147).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:9:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(148).translation = [0 -6.6613381477509392e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(148).angle = 0;  % rad
smiData.RigidTransform(148).axis = [0 0 0];
smiData.RigidTransform(148).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:9:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(149).translation = [0 -20.34303900990238 3.9000000000000057];  % mm
smiData.RigidTransform(149).angle = 1.5708258541254096;  % rad
smiData.RigidTransform(149).axis = [-0.005433825417808325 -0.9999704731054101 0.0054338254178083233];
smiData.RigidTransform(149).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:9]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(150).translation = [-8.8817841970012523e-15 4.4408920985006262e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(150).angle = 0;  % rad
smiData.RigidTransform(150).axis = [0 0 0];
smiData.RigidTransform(150).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:10:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(151).translation = [-8.8817841970012523e-15 4.4408920985006262e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(151).angle = 0;  % rad
smiData.RigidTransform(151).axis = [0 0 0];
smiData.RigidTransform(151).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:10:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(152).translation = [-6.9577291178465117 -19.11620364196515 3.9000000000000057];  % mm
smiData.RigidTransform(152).angle = 1.5746678634045232;  % rad
smiData.RigidTransform(152).axis = [-0.28234223728058477 -0.95730155386104088 -0.062101497748689345];
smiData.RigidTransform(152).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:10]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(153).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(153).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(153).axis = [0 -1 0];
smiData.RigidTransform(153).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:11:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(154).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(154).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(154).axis = [0 -1 0];
smiData.RigidTransform(154).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:11:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(155).translation = [-20.033982536781664 -3.5325316522768269 3.9000000000000057];  % mm
smiData.RigidTransform(155).angle = 1.5709586651174521;  % rad
smiData.RigidTransform(155).axis = [-0.98686020153027221 -0.16107337043484365 0.012740171599709398];
smiData.RigidTransform(155).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:11]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(156).translation = [8.8817841970012523e-15 8.8817841970012523e-15 -3.4000580129145419e-15];  % mm
smiData.RigidTransform(156).angle = 0;  % rad
smiData.RigidTransform(156).axis = [0 0 0];
smiData.RigidTransform(156).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:12:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(157).translation = [8.8817841970012523e-15 8.8817841970012523e-15 -3.4000580129145419e-15];  % mm
smiData.RigidTransform(157).angle = 0;  % rad
smiData.RigidTransform(157).axis = [0 0 0];
smiData.RigidTransform(157).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:12:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(158).translation = [-17.617588572753295 -10.171519504951194 3.9000000000000057];  % mm
smiData.RigidTransform(158).angle = 2.3566507137068076;  % rad
smiData.RigidTransform(158).axis = [-0.036647938852638923 -0.76441658405531132 -0.64368021143970422];
smiData.RigidTransform(158).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:12]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(159).translation = [0 -4.4408920985006262e-15 4.4408920985006262e-15];  % mm
smiData.RigidTransform(159).angle = 0;  % rad
smiData.RigidTransform(159).axis = [0 0 0];
smiData.RigidTransform(159).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:13:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(160).translation = [0 -4.4408920985006262e-15 4.4408920985006262e-15];  % mm
smiData.RigidTransform(160).angle = 0;  % rad
smiData.RigidTransform(160).axis = [0 0 0];
smiData.RigidTransform(160).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:13:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(161).translation = [-13.076253418935195 -15.583671989688305 3.9000000000000057];  % mm
smiData.RigidTransform(161).angle = 1.6087389818669415;  % rad
smiData.RigidTransform(161).axis = [-0.47240264427383244 -0.86040022928977755 -0.19117318619824597];
smiData.RigidTransform(161).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:13]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(162).translation = [-1.7763568394002505e-14 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(162).angle = 0;  % rad
smiData.RigidTransform(162).axis = [0 0 0];
smiData.RigidTransform(162).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:14:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(163).translation = [-1.7763568394002505e-14 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(163).angle = 0;  % rad
smiData.RigidTransform(163).axis = [0 0 0];
smiData.RigidTransform(163).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:14:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(164).translation = [-17.617588572753313 10.171519504951192 3.9000000000000057];  % mm
smiData.RigidTransform(164).angle = 2.582499565057665;  % rad
smiData.RigidTransform(164).axis = [-0.58727711514840264 -0.4430669238273009 -0.67734576918526801];
smiData.RigidTransform(164).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:14]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(165).translation = [0 -2.2204460492503131e-15 0];  % mm
smiData.RigidTransform(165).angle = 0;  % rad
smiData.RigidTransform(165).axis = [0 0 0];
smiData.RigidTransform(165).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:15:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(166).translation = [0 -2.2204460492503131e-15 0];  % mm
smiData.RigidTransform(166).angle = 0;  % rad
smiData.RigidTransform(166).axis = [0 0 0];
smiData.RigidTransform(166).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:15:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(167).translation = [-13.076253418935213 15.583671989688304 3.9000000000000057];  % mm
smiData.RigidTransform(167).angle = 1.6122803866227113;  % rad
smiData.RigidTransform(167).axis = [-0.46379520998842738 0.86317628086817522 0.19955127496053673];
smiData.RigidTransform(167).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:15]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(168).translation = [8.8817841970012523e-15 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(168).angle = 0;  % rad
smiData.RigidTransform(168).axis = [0 0 0];
smiData.RigidTransform(168).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:16:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(169).translation = [8.8817841970012523e-15 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(169).angle = 0;  % rad
smiData.RigidTransform(169).axis = [0 0 0];
smiData.RigidTransform(169).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:16:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(170).translation = [-20.033982536781629 3.5325316522768171 3.8999999999999879];  % mm
smiData.RigidTransform(170).angle = 1.587218280562366;  % rad
smiData.RigidTransform(170).axis = [-0.94669492629239571 0.29599459563889585 0.12710592387769365];
smiData.RigidTransform(170).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:16]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(171).translation = [1.7763568394002505e-14 3.3306690738754696e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(171).angle = 0;  % rad
smiData.RigidTransform(171).axis = [0 0 0];
smiData.RigidTransform(171).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:17:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(172).translation = [1.7763568394002505e-14 3.3306690738754696e-15 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(172).angle = 0;  % rad
smiData.RigidTransform(172).axis = [0 0 0];
smiData.RigidTransform(172).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:17:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(173).translation = [-6.9577291178464717 19.116203641965129 3.8999999999999879];  % mm
smiData.RigidTransform(173).angle = 1.5708347030403043;  % rad
smiData.RigidTransform(173).axis = [-0.34782816724703663 0.93753783459487483 -0.0061947375021516671];
smiData.RigidTransform(173).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:17]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(174).translation = [0 0 0];  % mm
smiData.RigidTransform(174).angle = 0;  % rad
smiData.RigidTransform(174).axis = [0 0 0];
smiData.RigidTransform(174).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:18:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(175).translation = [0 0 0];  % mm
smiData.RigidTransform(175).angle = 0;  % rad
smiData.RigidTransform(175).axis = [0 0 0];
smiData.RigidTransform(175).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:18:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(176).translation = [4.4408920985006262e-15 20.343039009902377 3.9000000000000057];  % mm
smiData.RigidTransform(176).angle = 1.5765453069752786;  % rad
smiData.RigidTransform(176).axis = [0.075604808196371331 0.9942674820968348 0.075604808196371276];
smiData.RigidTransform(176).ID = 'AssemblyGround[RoboCinWheel_simplified:3:Roller:18]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(177).translation = [0 0 0];  % mm
smiData.RigidTransform(177).angle = 0;  % rad
smiData.RigidTransform(177).axis = [0 0 0];
smiData.RigidTransform(177).ID = 'AssemblyGround[RoboCinWheel_simplified:4:wheel_simplified2:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(178).translation = [4.4408920985006262e-15 2.2204460492503131e-15 -2.0000000000000018];  % mm
smiData.RigidTransform(178).angle = 1.5743521549564066;  % rad
smiData.RigidTransform(178).axis = [-0.059524966254721021 0.99645047884214932 0.059524966254721069];
smiData.RigidTransform(178).ID = 'AssemblyGround[RoboCinWheel_simplified:4:gear_z60_26106000_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(179).translation = [0 0 -1.1102230246251565e-15];  % mm
smiData.RigidTransform(179).angle = 0;  % rad
smiData.RigidTransform(179).axis = [0 0 0];
smiData.RigidTransform(179).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:1:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(180).translation = [0 0 -1.1102230246251565e-15];  % mm
smiData.RigidTransform(180).angle = 0;  % rad
smiData.RigidTransform(180).axis = [0 0 0];
smiData.RigidTransform(180).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:1:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(181).translation = [6.9577291178464495 19.116203641965164 3.9000000000000057];  % mm
smiData.RigidTransform(181).angle = 1.6707662029645323;  % rad
smiData.RigidTransform(181).axis = [0.59250497814787018 0.74712196633184702 0.3012417937378985];
smiData.RigidTransform(181).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(182).translation = [8.8817841970012523e-15 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(182).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(182).axis = [0 1 0];
smiData.RigidTransform(182).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:2:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(183).translation = [8.8817841970012523e-15 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(183).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(183).axis = [0 1 0];
smiData.RigidTransform(183).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:2:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(184).translation = [13.076253418935181 15.583671989688312 3.9000000000000057];  % mm
smiData.RigidTransform(184).angle = 1.5750828090518707;  % rad
smiData.RigidTransform(184).axis = [0.69008485031051403 0.72077369932349589 0.065331261547887085];
smiData.RigidTransform(184).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(185).translation = [4.4408920985006262e-15 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(185).angle = 0;  % rad
smiData.RigidTransform(185).axis = [0 0 0];
smiData.RigidTransform(185).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:3:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(186).translation = [4.4408920985006262e-15 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(186).angle = 0;  % rad
smiData.RigidTransform(186).axis = [0 0 0];
smiData.RigidTransform(186).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:3:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(187).translation = [17.617588572753306 10.171519504951178 3.9000000000000057];  % mm
smiData.RigidTransform(187).angle = 1.581650517998358;  % rad
smiData.RigidTransform(187).axis = [0.90848684222222698 0.40486321555322907 0.10362159138416123];
smiData.RigidTransform(187).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(188).translation = [-5.5511151231257827e-15 0 0];  % mm
smiData.RigidTransform(188).angle = 0;  % rad
smiData.RigidTransform(188).axis = [0 0 0];
smiData.RigidTransform(188).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:4:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(189).translation = [-5.5511151231257827e-15 0 0];  % mm
smiData.RigidTransform(189).angle = 0;  % rad
smiData.RigidTransform(189).axis = [0 0 0];
smiData.RigidTransform(189).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:4:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(190).translation = [20.033982536781632 3.5325316522768246 3.9000000000000057];  % mm
smiData.RigidTransform(190).angle = 1.5719170830772067;  % rad
smiData.RigidTransform(190).axis = [0.97789455582207863 0.206404303089295 -0.033458950368503299];
smiData.RigidTransform(190).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(191).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(191).angle = 0;  % rad
smiData.RigidTransform(191).axis = [0 0 0];
smiData.RigidTransform(191).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:5:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(192).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(192).angle = 0;  % rad
smiData.RigidTransform(192).axis = [0 0 0];
smiData.RigidTransform(192).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:5:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(193).translation = [20.033982536781664 -3.5325316522768246 3.8999999999999879];  % mm
smiData.RigidTransform(193).angle = 1.615258997748394;  % rad
smiData.RigidTransform(193).axis = [0.97778820690186097 0.037064146659050258 -0.20629219926133863];
smiData.RigidTransform(193).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(194).translation = [0 -8.8817841970012523e-15 4.4408920985006262e-15];  % mm
smiData.RigidTransform(194).angle = 0;  % rad
smiData.RigidTransform(194).axis = [0 0 0];
smiData.RigidTransform(194).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:6:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(195).translation = [0 -8.8817841970012523e-15 4.4408920985006262e-15];  % mm
smiData.RigidTransform(195).angle = 0;  % rad
smiData.RigidTransform(195).axis = [0 0 0];
smiData.RigidTransform(195).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:6:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(196).translation = [17.617588572753302 -10.17151950495119 3.8999999999999879];  % mm
smiData.RigidTransform(196).angle = 1.5871941900039808;  % rad
smiData.RigidTransform(196).axis = [0.91544669679333768 -0.38187006336528118 -0.1270141725775632];
smiData.RigidTransform(196).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(197).translation = [0 0 0];  % mm
smiData.RigidTransform(197).angle = 0;  % rad
smiData.RigidTransform(197).axis = [0 0 0];
smiData.RigidTransform(197).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:7:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(198).translation = [0 0 0];  % mm
smiData.RigidTransform(198).angle = 0;  % rad
smiData.RigidTransform(198).axis = [0 0 0];
smiData.RigidTransform(198).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:7:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(199).translation = [13.076253418935176 -15.583671989688311 3.8999999999999879];  % mm
smiData.RigidTransform(199).angle = 1.5709913186482833;  % rad
smiData.RigidTransform(199).axis = [0.63196632131946318 -0.77487006322363494 0.013962587072061636];
smiData.RigidTransform(199).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(200).translation = [0 0 1.1102230246251565e-15];  % mm
smiData.RigidTransform(200).angle = 0;  % rad
smiData.RigidTransform(200).axis = [0 0 0];
smiData.RigidTransform(200).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:8:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(201).translation = [0 0 1.1102230246251565e-15];  % mm
smiData.RigidTransform(201).angle = 0;  % rad
smiData.RigidTransform(201).axis = [0 0 0];
smiData.RigidTransform(201).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:8:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(202).translation = [6.9577291178464726 -19.116203641965132 3.9000000000000057];  % mm
smiData.RigidTransform(202).angle = 1.5709582937240223;  % rad
smiData.RigidTransform(202).axis = [0.35392289703822161 -0.93518802507981946 -0.012725592299738537];
smiData.RigidTransform(202).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:8]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(203).translation = [-1.7763568394002505e-14 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(203).angle = 0;  % rad
smiData.RigidTransform(203).axis = [0 0 0];
smiData.RigidTransform(203).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:9:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(204).translation = [-1.7763568394002505e-14 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(204).angle = 0;  % rad
smiData.RigidTransform(204).axis = [0 0 0];
smiData.RigidTransform(204).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:9:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(205).translation = [1.1102230246251565e-15 -20.343039009902377 3.8999999999999879];  % mm
smiData.RigidTransform(205).angle = 1.5708258541254096;  % rad
smiData.RigidTransform(205).axis = [-0.0054338254178083406 -0.9999704731054101 0.0054338254178083328];
smiData.RigidTransform(205).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:9]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(206).translation = [8.8817841970012523e-15 0 6.106226635438361e-15];  % mm
smiData.RigidTransform(206).angle = 0;  % rad
smiData.RigidTransform(206).axis = [0 0 0];
smiData.RigidTransform(206).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:10:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(207).translation = [8.8817841970012523e-15 0 6.106226635438361e-15];  % mm
smiData.RigidTransform(207).angle = 0;  % rad
smiData.RigidTransform(207).axis = [0 0 0];
smiData.RigidTransform(207).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:10:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(208).translation = [-6.9577291178465108 -19.116203641965136 3.9000000000000057];  % mm
smiData.RigidTransform(208).angle = 1.5746678634045228;  % rad
smiData.RigidTransform(208).axis = [-0.28234223728058488 -0.95730155386104088 -0.062101497748689331];
smiData.RigidTransform(208).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:10]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(209).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(209).angle = 0;  % rad
smiData.RigidTransform(209).axis = [0 0 0];
smiData.RigidTransform(209).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:11:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(210).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(210).angle = 0;  % rad
smiData.RigidTransform(210).axis = [0 0 0];
smiData.RigidTransform(210).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:11:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(211).translation = [-20.033982536781664 -3.5325316522768202 3.8999999999999879];  % mm
smiData.RigidTransform(211).angle = 1.5709586651174514;  % rad
smiData.RigidTransform(211).axis = [-0.98686020153027232 -0.16107337043484365 0.01274017159970949];
smiData.RigidTransform(211).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:11]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(212).translation = [0 -8.8817841970012523e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(212).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(212).axis = [0 -1 0];
smiData.RigidTransform(212).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:12:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(213).translation = [0 -8.8817841970012523e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(213).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(213).axis = [0 -1 0];
smiData.RigidTransform(213).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:12:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(214).translation = [-17.617588572753291 -10.17151950495119 3.9000000000000057];  % mm
smiData.RigidTransform(214).angle = 2.3566507137068076;  % rad
smiData.RigidTransform(214).axis = [-0.036647938852638832 -0.76441658405531143 -0.64368021143970411];
smiData.RigidTransform(214).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:12]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(215).translation = [8.8817841970012523e-15 0 0];  % mm
smiData.RigidTransform(215).angle = 6.9388939039072308e-17;  % rad
smiData.RigidTransform(215).axis = [0 -1 0];
smiData.RigidTransform(215).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:13:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(216).translation = [8.8817841970012523e-15 0 0];  % mm
smiData.RigidTransform(216).angle = 6.9388939039072308e-17;  % rad
smiData.RigidTransform(216).axis = [0 -1 0];
smiData.RigidTransform(216).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:13:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(217).translation = [-13.076253418935192 -15.583671989688296 3.8999999999999879];  % mm
smiData.RigidTransform(217).angle = 1.6087389818669413;  % rad
smiData.RigidTransform(217).axis = [-0.47240264427383255 -0.86040022928977755 -0.19117318619824591];
smiData.RigidTransform(217).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:13]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(218).translation = [1.7763568394002505e-14 2.2204460492503131e-15 0];  % mm
smiData.RigidTransform(218).angle = 0;  % rad
smiData.RigidTransform(218).axis = [0 0 0];
smiData.RigidTransform(218).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:14:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(219).translation = [1.7763568394002505e-14 2.2204460492503131e-15 0];  % mm
smiData.RigidTransform(219).angle = 0;  % rad
smiData.RigidTransform(219).axis = [0 0 0];
smiData.RigidTransform(219).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:14:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(220).translation = [-17.617588572753313 10.171519504951192 3.9000000000000057];  % mm
smiData.RigidTransform(220).angle = 2.582499565057665;  % rad
smiData.RigidTransform(220).axis = [-0.58727711514840253 -0.44306692382730078 -0.67734576918526823];
smiData.RigidTransform(220).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:14]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(221).translation = [-1.7763568394002505e-14 4.4408920985006262e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(221).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(221).axis = [-1 0 0];
smiData.RigidTransform(221).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:15:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(222).translation = [-1.7763568394002505e-14 4.4408920985006262e-15 2.2204460492503131e-15];  % mm
smiData.RigidTransform(222).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(222).axis = [-1 0 0];
smiData.RigidTransform(222).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:15:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(223).translation = [-13.076253418935206 15.583671989688302 3.9000000000000057];  % mm
smiData.RigidTransform(223).angle = 1.6122803866227111;  % rad
smiData.RigidTransform(223).axis = [-0.46379520998842738 0.86317628086817522 0.19955127496053676];
smiData.RigidTransform(223).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:15]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(224).translation = [0 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(224).angle = 0;  % rad
smiData.RigidTransform(224).axis = [0 0 0];
smiData.RigidTransform(224).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:16:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(225).translation = [0 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(225).angle = 0;  % rad
smiData.RigidTransform(225).axis = [0 0 0];
smiData.RigidTransform(225).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:16:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(226).translation = [-20.033982536781629 3.5325316522768202 3.9000000000000057];  % mm
smiData.RigidTransform(226).angle = 1.5872182805623658;  % rad
smiData.RigidTransform(226).axis = [-0.94669492629239571 0.2959945956388958 0.12710592387769371];
smiData.RigidTransform(226).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:16]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(227).translation = [8.8817841970012523e-15 0 -3.3306690738754696e-15];  % mm
smiData.RigidTransform(227).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(227).axis = [1 0 0];
smiData.RigidTransform(227).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:17:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(228).translation = [8.8817841970012523e-15 0 -3.3306690738754696e-15];  % mm
smiData.RigidTransform(228).angle = 5.5511151231257827e-17;  % rad
smiData.RigidTransform(228).axis = [1 0 0];
smiData.RigidTransform(228).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:17:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(229).translation = [-6.957729117846478 19.116203641965129 3.9000000000000057];  % mm
smiData.RigidTransform(229).angle = 1.570834703040304;  % rad
smiData.RigidTransform(229).axis = [-0.34782816724703669 0.93753783459487483 -0.0061947375021516966];
smiData.RigidTransform(229).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:17]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(230).translation = [0 0 -6.6613381477509392e-15];  % mm
smiData.RigidTransform(230).angle = 0;  % rad
smiData.RigidTransform(230).axis = [0 0 0];
smiData.RigidTransform(230).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:18:Roller:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(231).translation = [0 0 -6.6613381477509392e-15];  % mm
smiData.RigidTransform(231).angle = 0;  % rad
smiData.RigidTransform(231).axis = [0 0 0];
smiData.RigidTransform(231).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:18:RollerTire:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(232).translation = [3.3306690738754696e-15 20.34303900990238 3.9000000000000057];  % mm
smiData.RigidTransform(232).angle = 1.5765453069752786;  % rad
smiData.RigidTransform(232).axis = [0.075604808196371262 0.9942674820968348 0.07560480819637129];
smiData.RigidTransform(232).ID = 'AssemblyGround[RoboCinWheel_simplified:4:Roller:18]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(233).translation = [0.0 0.0 0.0];  % mm
smiData.RigidTransform(233).angle = 0;  % rad
smiData.RigidTransform(233).axis = [0 0 0];
smiData.RigidTransform(233).ID = 'RootGround[Base_RoboCIn:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(234).translation = [-32.000000000000036 72.000000000000014 101.80000000000001];  % mm
smiData.RigidTransform(234).angle = 0.41822432957922939;  % rad
smiData.RigidTransform(234).axis = [0.0 0.0 1];
smiData.RigidTransform(234).ID = 'RootGround[SupportFirstToSecond:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(235).translation = [32.00000000000005 72.000000000000014 101.80000000000004];  % mm
smiData.RigidTransform(235).angle = 0.41822432957923195;  % rad
smiData.RigidTransform(235).axis = [0 0 -1];
smiData.RigidTransform(235).ID = 'RootGround[SupportFirstToSecond:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(236).translation = [76.000000000000071 -22.000000000000057 101.8];  % mm
smiData.RigidTransform(236).angle = 1.2890244595215423;  % rad
smiData.RigidTransform(236).axis = [0 0.0 1];
smiData.RigidTransform(236).ID = 'RootGround[SupportFirstToSecond:3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(237).translation = [-75.999999999999972 -22.00000000000005 101.8];  % mm
smiData.RigidTransform(237).angle = 1.2890244595215443;  % rad
smiData.RigidTransform(237).axis = [0 1.3002783353225559e-16 -1];
smiData.RigidTransform(237).ID = 'RootGround[SupportFirstToSecond:4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(238).translation = [0 0 104.2999999999999];  % mm
smiData.RigidTransform(238).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(238).axis = [1 -2.7061686225238309e-15 -4.3940754490728778e-17];
smiData.RigidTransform(238).ID = 'RootGround[plate_sec_floor:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(239).translation = [77.071395471990144 11.999999999999702 140.2999999999999];  % mm
smiData.RigidTransform(239).angle = 1.4163367283107207;  % rad
smiData.RigidTransform(239).axis = [3.7331197362420665e-16 -9.8007922831308119e-16 -1];
smiData.RigidTransform(239).ID = 'RootGround[SupportSecondToCoverNew:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(240).translation = [-77.071395471989945 12.000000000000172 140.29999999999987];  % mm
smiData.RigidTransform(240).angle = 1.4163367283107036;  % rad
smiData.RigidTransform(240).axis = [0 0 1];
smiData.RigidTransform(240).ID = 'RootGround[SupportSecondToCoverNew:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(241).translation = [0 0 141.2999999999999];  % mm
smiData.RigidTransform(241).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(241).axis = [1 -5.0792703376600912e-15 0];
smiData.RigidTransform(241).ID = 'RootGround[CoverNew:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(242).translation = [-54.772000000000347 -34.999999999999453 140.19999999999987];  % mm
smiData.RigidTransform(242).angle = 0.37621623395103726;  % rad
smiData.RigidTransform(242).axis = [0 0 1];
smiData.RigidTransform(242).ID = 'RootGround[tag_green:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(243).translation = [-34.999999999999474 54.772000000000382 140.19999999999987];  % mm
smiData.RigidTransform(243).angle = 0.94327784684582328;  % rad
smiData.RigidTransform(243).axis = [0 0 -1];
smiData.RigidTransform(243).ID = 'RootGround[tag_green:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(244).translation = [54.77199999999965 -35.000000000000561 140.1999999999999];  % mm
smiData.RigidTransform(244).angle = 0.13199192081589664;  % rad
smiData.RigidTransform(244).axis = [0 0 -1];
smiData.RigidTransform(244).ID = 'RootGround[tag_magenta:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(245).translation = [35.000000000000576 54.771999999999672 140.19999999999987];  % mm
smiData.RigidTransform(245).angle = 1.1516966728649471;  % rad
smiData.RigidTransform(245).axis = [0 0 -1];
smiData.RigidTransform(245).ID = 'RootGround[tag_magenta:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(246).translation = [0 0 140.19999999999987];  % mm
smiData.RigidTransform(246).angle = 0.53181028398149766;  % rad
smiData.RigidTransform(246).axis = [0 0 -1];
smiData.RigidTransform(246).ID = 'RootGround[tag_yellow:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(247).translation = [0 0 47.499999999999872];  % mm
smiData.RigidTransform(247).angle = 1.5707963267948868;  % rad
smiData.RigidTransform(247).axis = [0 0 1];
smiData.RigidTransform(247).ID = 'RootGround[tampa_nut:1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(13).mass = 0.0;
smiData.Solid(13).CoM = [0.0 0.0 0.0];
smiData.Solid(13).MoI = [0.0 0.0 0.0];
smiData.Solid(13).PoI = [0.0 0.0 0.0];
smiData.Solid(13).color = [0.0 0.0 0.0];
smiData.Solid(13).opacity = 0.0;
smiData.Solid(13).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.75;  % kg
smiData.Solid(1).CoM = [0.00057440854831471535 11.199250388755742 24.711588836504763];  % mm
smiData.Solid(1).MoI = [3296.7072499169813 4070.2394558686037 6423.7169257654677];  % lbm*mm^2
smiData.Solid(1).PoI = [-65.061269266158106 0.0083341636992356142 0.11009227409931732];  % lbm*mm^2
smiData.Solid(1).color = [0.2 0.2 0.2];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Base_RoboCIn.ipt_{A3F0F43E-4104-5C43-25A9-679649E10109}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.0069268201953218891;  % lbm
smiData.Solid(2).CoM = [4.260945932372097e-12 0 -27.900000000000009];  % mm
smiData.Solid(2).MoI = [1.6178046213403148 1.6182421123278208 0.067902785907614727];  % lbm*mm^2
smiData.Solid(2).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(2).color = [0.2 0.2 0.2];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'SupportFirstToSecond.ipt_{6F44A5EA-44FE-9EEE-099F-4EAA70434655}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.18855181142679808;  % lbm
smiData.Solid(3).CoM = [4.5066822298764118 -28.633985337486259 7.3209536257657888];  % mm
smiData.Solid(3).MoI = [237.56238719610445 376.39830612593477 601.68114973872309];  % lbm*mm^2
smiData.Solid(3).PoI = [3.9250204766118721 1.6001138739104457 -26.015130492419718];  % lbm*mm^2
smiData.Solid(3).color = [0.2 0.2 0.2];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'plate_sec_floor.ipt_{8CAE8D26-4FC1-B74A-3771-1C970185F6A7}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.005204291524972351;  % lbm
smiData.Solid(4).CoM = [-2.6900520259020948e-12 -0.027920027342214649 -21.972295258434865];  % mm
smiData.Solid(4).MoI = [0.74456655107948633 0.74514885492315019 0.05023076840691796];  % lbm*mm^2
smiData.Solid(4).PoI = [0.0028947884266912866 7.4140515113943311e-13 0];  % lbm*mm^2
smiData.Solid(4).color = [0.2 0.2 0.2];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'SupportSecondToCoverNew.ipt_{BEC3F5B6-48A8-575C-1C56-CFB57A159208}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.18047651509506984;  % lbm
smiData.Solid(5).CoM = [-0.00037758467611801578 7.7860726307854282 22.071428624981657];  % mm
smiData.Solid(5).MoI = [552.76104138301173 719.63413564236157 1151.6324311682092];  % lbm*mm^2
smiData.Solid(5).PoI = [-17.169432029150279 -0.0014519604663791226 -0.0016518438097013388];  % lbm*mm^2
smiData.Solid(5).color = [0.2 0.2 0.2];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'CoverNew.ipt_{AEE0F50D-49D2-3BAD-D71A-CEB88670302D}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.0015271887843187908;  % lbm
smiData.Solid(6).CoM = [2.1959273940433164e-09 0 0.24999999999999997];  % mm
smiData.Solid(6).MoI = [0.16840434728682718 0.16840439077659541 0.33674510519740936];  % lbm*mm^2
smiData.Solid(6).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(6).color = [0.0 1.0 0];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'tag_green.ipt_{EA84E62E-4C4E-0CDB-8499-F3997CEEEC2E}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.0015271887843187908;  % lbm
smiData.Solid(7).CoM = [2.1959273940433164e-09 0 0.24999999999999997];  % mm
smiData.Solid(7).MoI = [0.16840434728682718 0.16840439077659541 0.33674510519740936];  % lbm*mm^2
smiData.Solid(7).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(7).color = [1.0 0.0 1.0];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = 'tag_magenta.ipt_{88502DBA-47F2-AB80-AA80-70B1522D85C4}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.0023409968666655389;  % lbm
smiData.Solid(8).CoM = [2.7187657441618366e-09 -8.3643778605217077e-15 0.24999999999999994];  % mm
smiData.Solid(8).MoI = [0.39567716459293067 0.39567726678173226 0.7912568898385518];  % lbm*mm^2
smiData.Solid(8).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(8).color = [1.0 1.0 0.0];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = 'tag_yellow.ipt_{C8D2A498-421B-DC7C-8EDD-97A823AD5ACF}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.0085891502282460942;  % kg
smiData.Solid(9).CoM = [84.983548088595725 -0.090343151347038825 50.088264606409382];  % mm
smiData.Solid(9).MoI = [8.0005526632178796 6.8153894959554346 1.2397942366506527];  % kg*mm^2
smiData.Solid(9).PoI = [0.013242442408123101 -0.030826393123521711 0.00096828764742509224];  % kg*mm^2
smiData.Solid(9).color = [0.2 0.2 0.2];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = 'tampa_nut.ipt_{904691CB-4352-A65F-A21A-B0AC422A8EA6}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.011271823488383828;  % kg
smiData.Solid(10).CoM = [1.1118860815129143e-05 -7.9229905546869989e-05 3.4595576488320932];  % mm
smiData.Solid(10).MoI = [1.2329730447557457 1.2329548127199599 2.220751887115306];  % kg*mm^2
smiData.Solid(10).PoI = [7.0591681981207835e-07 -9.9041724843427683e-08 2.6377127006674108e-06];  % kg*mm^2
smiData.Solid(10).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = 'wheel_simplified2.ipt_{FC343ECF-4ED8-3639-0595-D7B9B3DF5A9A}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.011464955238423951;  % kg
smiData.Solid(11).CoM = [0.99999999999999856 1.587912727207819e-12 2.0157305363563722e-11];  % mm
smiData.Solid(11).MoI = [1.3254747320584865 0.66654722685467238 0.66654722666205724];  % kg*mm^2
smiData.Solid(11).PoI = [-1.5310547496482831e-11 0 0];  % kg*mm^2
smiData.Solid(11).color = [0.7803921568627451 0.5607843137254902 0.10980392156862745];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = 'gear_z60_26106000_simplified.ipt_{A3997E71-4B0D-06D3-12BD-059450D7D968}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.00042123328419836457;  % kg
smiData.Solid(12).CoM = [-3.0759129973900856e-10 0 0];  % mm
smiData.Solid(12).MoI = [0.0012716182135763671 0.0012716184409476525 0.0017605558825417185];  % kg*mm^2
smiData.Solid(12).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(12).color = [0.7803921568627451 0.5607843137254902 0.10980392156862745];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = 'Roller.ipt_{2C102C11-4343-AF32-459C-5F97DD88C180}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 7.2860775354338029e-05;  % kg
smiData.Solid(13).CoM = [0 0 0];  % mm
smiData.Solid(13).MoI = [0.00052234345231370893 0.00052234345231370893 0.0010045224022133389];  % kg*mm^2
smiData.Solid(13).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(13).color = [0.25098039215686274 0.25098039215686274 0.25098039215686274];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = 'RollerTire.ipt_{E1A9B439-4457-1BB5-0D31-0D917DF380D3}';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 7.3679038450712646;  % deg
smiData.RevoluteJoint(1).ID = '[RoboCinWheel_simplified:1:-:Base_RoboCIn:1]';

smiData.RevoluteJoint(2).Rz.Pos = 127.5590419472624;  % deg
smiData.RevoluteJoint(2).ID = '[RoboCinWheel_simplified:2:-:Base_RoboCIn:1]';

smiData.RevoluteJoint(3).Rz.Pos = 118.65114943408081;  % deg
smiData.RevoluteJoint(3).ID = '[RoboCinWheel_simplified:3:-:Base_RoboCIn:1]';

smiData.RevoluteJoint(4).Rz.Pos = -8.3973779179639685;  % deg
smiData.RevoluteJoint(4).ID = '[RoboCinWheel_simplified:4:-:Base_RoboCIn:1]';


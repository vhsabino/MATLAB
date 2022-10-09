% Simscape(TM) Multibody(TM) version: 7.4

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-1.7763568394002505e-14 4.4408920985006262e-15 0];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'B[wheel_simplified:1:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [71.447095812216233 -41.249999999999993 19.5];  % mm
smiData.RigidTransform(2).angle = 0;  % rad
smiData.RigidTransform(2).axis = [0 0 0];
smiData.RigidTransform(2).ID = 'F[wheel_simplified:1:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'B[wheel_simplified:2:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [58.336309447890223 58.336309447890208 19.499999999999996];  % mm
smiData.RigidTransform(4).angle = 0;  % rad
smiData.RigidTransform(4).axis = [0 0 0];
smiData.RigidTransform(4).ID = 'F[wheel_simplified:2:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 0];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = 'B[wheel_simplified:3:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-71.447095812216205 -41.25 19.500000000000011];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = 'F[wheel_simplified:3:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'B[wheel_simplified:4:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-58.336309447890208 58.336309447890208 19.5];  % mm
smiData.RigidTransform(8).angle = 0;  % rad
smiData.RigidTransform(8).axis = [0 0 0];
smiData.RigidTransform(8).ID = 'F[wheel_simplified:4:-:Base_RoboCIn_simplified:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'RootGround[Base_RoboCIn_simplified:1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(2).mass = 0.0;
smiData.Solid(2).CoM = [0.0 0.0 0.0];
smiData.Solid(2).MoI = [0.0 0.0 0.0];
smiData.Solid(2).PoI = [0.0 0.0 0.0];
smiData.Solid(2).color = [0.0 0.0 0.0];
smiData.Solid(2).opacity = 0.0;
smiData.Solid(2).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 1.6491731637283091;  % lbm
smiData.Solid(1).CoM = [0.0012034633546569682 11.484154354061612 25.247670179371077];  % mm
smiData.Solid(1).MoI = [3038.0090923824487 3656.1129917161506 5789.8840888548448];  % lbm*mm^2
smiData.Solid(1).PoI = [-61.50415661905982 0.026495411946541481 0.15878427818036894];  % lbm*mm^2
smiData.Solid(1).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Base_RoboCIn_simplified.ipt_{80388B35-4D35-EBA0-A118-E9ACF8801021}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.14000659015832148;  % lbm
smiData.Solid(2).CoM = [0 0 0];  % mm
smiData.Solid(2).MoI = [34.305114753542767 34.305114753542767 34.305114753542767];  % lbm*mm^2
smiData.Solid(2).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(2).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'wheel_simplified.ipt_{4540ABE7-4BDF-DB8A-B216-62BCB0240894}';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the SphericalJoint structure array by filling in null values.
smiData.SphericalJoint(4).S.Pos.Angle = 0.0;
smiData.SphericalJoint(4).S.Pos.Axis = [0.0 0.0 0.0];
smiData.SphericalJoint(4).ID = '';

smiData.SphericalJoint(1).S.Pos.Angle = 12.445565354699998;  % deg
smiData.SphericalJoint(1).S.Pos.Axis = [0.12604805834138796 -0.838033444493823 0.53085952275360426];
smiData.SphericalJoint(1).ID = '[wheel_simplified:1:-:Base_RoboCIn_simplified:1]';

smiData.SphericalJoint(2).S.Pos.Angle = 3.1805546814635164e-15;  % deg
smiData.SphericalJoint(2).S.Pos.Axis = [-0 -0 1];
smiData.SphericalJoint(2).ID = '[wheel_simplified:2:-:Base_RoboCIn_simplified:1]';

smiData.SphericalJoint(3).S.Pos.Angle = 3.560414607333581e-14;  % deg
smiData.SphericalJoint(3).S.Pos.Axis = [0.38510347789735128 -0.61024150331233262 0.69231540423889804];
smiData.SphericalJoint(3).ID = '[wheel_simplified:3:-:Base_RoboCIn_simplified:1]';

smiData.SphericalJoint(4).S.Pos.Angle = 1.7568234240669951e-14;  % deg
smiData.SphericalJoint(4).S.Pos.Axis = [-0 -0.57991020754432843 0.81468039818440097];
smiData.SphericalJoint(4).ID = '[wheel_simplified:4:-:Base_RoboCIn_simplified:1]';


!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = rad  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = Mechanism_6
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Mechanism_6.steel  &
   adams_id = 1  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29  &
   density = 7801.0
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Mechanism_6.ground.MARKER_11  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.ground.MARKER_21  &
   adams_id = 21  &
   location = 0.0, 0.375, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .Mechanism_6.ground.MARKER_35  &
   adams_id = 35  &
   location = 0.0, -0.25, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .Mechanism_6.ground  &
   material_type = .Mechanism_6.steel
!
part attributes  &
   part_name = .Mechanism_6.ground  &
   name_visibility = off
!
!----------------------------------- Link4 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
part create rigid_body name_and_position  &
   part_name = .Mechanism_6.Link4  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.Link4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Mechanism_6.Link4.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link4.MARKER_2  &
   adams_id = 2  &
   location = -0.1, -0.2, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link4.MARKER_3  &
   adams_id = 3  &
   location = -0.2, 0.1, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link4.cm  &
   adams_id = 37  &
   location = -0.102608735, -3.4202911662E-002, 0.0  &
   orientation = 3.463343208, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .Mechanism_6.Link4.MARKER_12  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link4.MARKER_23  &
   adams_id = 23  &
   location = -0.2, 0.1, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link4.MARKER_31  &
   adams_id = 31  &
   location = -0.1, -0.2, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link4.x4  &
   adams_id = 42  &
   location = -0.1, 5.0E-002, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .Mechanism_6.Link4  &
   material_type = .Mechanism_6.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .Mechanism_6.Link4.PLATE_1  &
   marker_name = .Mechanism_6.Link4.MARKER_1, .Mechanism_6.Link4.MARKER_2,  &
                 .Mechanism_6.Link4.MARKER_3  &
   width = 5.0E-002  &
   radius = 2.0E-002
!
part attributes  &
   part_name = .Mechanism_6.Link4  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------------- Slider8 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
part create rigid_body name_and_position  &
   part_name = .Mechanism_6.Slider8  &
   adams_id = 3  &
   location = 0.0, 0.0, -0.1  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.Slider8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Mechanism_6.Slider8.MARKER_4  &
   adams_id = 4  &
   location = 0.0, 0.45, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Slider8.cm  &
   adams_id = 38  &
   location = -5.0E-002, 0.375, 0.1  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Slider8.MARKER_22  &
   adams_id = 22  &
   location = 0.0, 0.375, 0.1  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .Mechanism_6.Slider8.MARKER_26  &
   adams_id = 26  &
   location = -5.0E-002, 0.375, 0.1  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .Mechanism_6.Slider8  &
   material_type = .Mechanism_6.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Mechanism_6.Slider8.BOX_2  &
   adams_id = 2  &
   corner_marker = .Mechanism_6.Slider8.MARKER_4  &
   diag_corner_coords = -0.1, -0.15, 0.2
!
part attributes  &
   part_name = .Mechanism_6.Slider8  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- Link3 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
part create rigid_body name_and_position  &
   part_name = .Mechanism_6.Link3  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.Link3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Mechanism_6.Link3.MARKER_27  &
   adams_id = 27  &
   location = -0.1, -0.2, 0.0  &
   orientation = 5.1760365894, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link3.MARKER_28  &
   adams_id = 28  &
   location = 0.0, -0.4, 0.0  &
   orientation = 5.1760365894, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link3.cm  &
   adams_id = 40  &
   location = -5.0E-002, -0.3, 0.0  &
   orientation = 3.6052402626, 1.5707963269, 1.5707963281
!
marker create  &
   marker_name = .Mechanism_6.Link3.MARKER_32  &
   adams_id = 32  &
   location = -0.1, -0.2, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link3.MARKER_33  &
   adams_id = 33  &
   location = 0.0, -0.4, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link3.x3  &
   adams_id = 44  &
   location = -5.0E-002, -0.3, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .Mechanism_6.Link3  &
   material_type = .Mechanism_6.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Mechanism_6.Link3.LINK_4  &
   i_marker = .Mechanism_6.Link3.MARKER_27  &
   j_marker = .Mechanism_6.Link3.MARKER_28  &
   width = 2.2360679775E-002  &
   depth = 1.1180339887E-002
!
part attributes  &
   part_name = .Mechanism_6.Link3  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- Link2 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
part create rigid_body name_and_position  &
   part_name = .Mechanism_6.Link2  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.Link2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Mechanism_6.Link2.MARKER_29  &
   adams_id = 29  &
   location = 0.0, -0.4, 0.0  &
   orientation = 1.5707963268, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link2.MARKER_30  &
   adams_id = 30  &
   location = 0.0, -0.25, 0.0  &
   orientation = 1.5707963268, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link2.cm  &
   adams_id = 41  &
   location = 0.0, -0.325, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .Mechanism_6.Link2.MARKER_34  &
   adams_id = 34  &
   location = 0.0, -0.4, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link2.MARKER_36  &
   adams_id = 36  &
   location = 0.0, -0.25, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link2.x2  &
   adams_id = 43  &
   location = 0.0, -0.3, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .Mechanism_6.Link2  &
   material_type = .Mechanism_6.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Mechanism_6.Link2.LINK_5  &
   i_marker = .Mechanism_6.Link2.MARKER_29  &
   j_marker = .Mechanism_6.Link2.MARKER_30  &
   width = 1.5E-002  &
   depth = 7.5E-003
!
part attributes  &
   part_name = .Mechanism_6.Link2  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- Link7 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
part create rigid_body name_and_position  &
   part_name = .Mechanism_6.Link7  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.Link7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Mechanism_6.Link7.MARKER_19  &
   adams_id = 19  &
   location = -0.2, 0.1, 0.0  &
   orientation = 1.0714496051, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link7.MARKER_20  &
   adams_id = 20  &
   location = -5.0E-002, 0.375, 0.0  &
   orientation = 1.0714496051, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link7.cm  &
   adams_id = 39  &
   location = -0.125, 0.2375, 0.0  &
   orientation = 2.6422459319, 1.5707963262, 1.5707963202
!
marker create  &
   marker_name = .Mechanism_6.Link7.MARKER_24  &
   adams_id = 24  &
   location = -0.2, 0.1, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link7.MARKER_25  &
   adams_id = 25  &
   location = -5.0E-002, 0.375, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .Mechanism_6.Link7.x7  &
   adams_id = 45  &
   location = -0.15, 0.2, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .Mechanism_6.Link7  &
   material_type = .Mechanism_6.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Mechanism_6.Link7.LINK_5  &
   i_marker = .Mechanism_6.Link7.MARKER_19  &
   j_marker = .Mechanism_6.Link7.MARKER_20  &
   width = 3.1324910215E-002  &
   depth = 1.5662455108E-002
!
part attributes  &
   part_name = .Mechanism_6.Link7  &
   color = MAGENTA  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .Mechanism_6.pA  &
   adams_id = 1  &
   i_marker_name = .Mechanism_6.ground.MARKER_11  &
   j_marker_name = .Mechanism_6.Link4.MARKER_12
!
constraint attributes  &
   constraint_name = .Mechanism_6.pA  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .Mechanism_6.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .Mechanism_6.ground.MARKER_21  &
   j_marker_name = .Mechanism_6.Slider8.MARKER_22
!
constraint attributes  &
   constraint_name = .Mechanism_6.JOINT_5  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Mechanism_6.pE  &
   adams_id = 6  &
   i_marker_name = .Mechanism_6.Link4.MARKER_23  &
   j_marker_name = .Mechanism_6.Link7.MARKER_24
!
constraint attributes  &
   constraint_name = .Mechanism_6.pE  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Mechanism_6.pD  &
   adams_id = 8  &
   i_marker_name = .Mechanism_6.Link4.MARKER_31  &
   j_marker_name = .Mechanism_6.Link3.MARKER_32
!
constraint attributes  &
   constraint_name = .Mechanism_6.pD  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Mechanism_6.pF  &
   adams_id = 7  &
   i_marker_name = .Mechanism_6.Link7.MARKER_25  &
   j_marker_name = .Mechanism_6.Slider8.MARKER_26
!
constraint attributes  &
   constraint_name = .Mechanism_6.pF  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Mechanism_6.pC  &
   adams_id = 9  &
   i_marker_name = .Mechanism_6.Link3.MARKER_33  &
   j_marker_name = .Mechanism_6.Link2.MARKER_34
!
constraint attributes  &
   constraint_name = .Mechanism_6.pC  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Mechanism_6.pB  &
   adams_id = 10  &
   i_marker_name = .Mechanism_6.ground.MARKER_35  &
   j_marker_name = .Mechanism_6.Link2.MARKER_36
!
constraint attributes  &
   constraint_name = .Mechanism_6.pB  &
   name_visibility = off
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Mechanism_6.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no forever=true step_size=1.0E-003 model_name=.Mechanism_6"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Mechanism_6.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Mechanism_6.general_motion_1  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.i_marker  &
   object_value = (.Mechanism_6.ground.MARKER_35)
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.j_marker  &
   object_value = (.Mechanism_6.Link2.MARKER_36)
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.constraint  &
   object_value = (.Mechanism_6.pB)
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r3_func  &
   string_value = "0.5 * time * time"
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Mechanism_6.general_motion_1.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .Mechanism_6.general_motion_1
!
undo end_block
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create pt2pt  &
   measure_name = .Mechanism_6.MEA_PT2PT_1_x7  &
   from_point = .Mechanism_6.Link7.MARKER_25  &
   to_point = .Mechanism_6.Link7.x7  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Mechanism_6.MEA_PT2PT_1_x7  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .Mechanism_6.MEA_PT2PT_1_x4  &
   from_point = .Mechanism_6.Link4.MARKER_1  &
   to_point = .Mechanism_6.Link4.x4  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Mechanism_6.MEA_PT2PT_1_x4  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .Mechanism_6.MEA_PT2PT_1_x3  &
   from_point = .Mechanism_6.Link3.MARKER_28  &
   to_point = .Mechanism_6.Link3.x3  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Mechanism_6.MEA_PT2PT_1_x3  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .Mechanism_6.MEA_PT2PT_1  &
   from_point = .Mechanism_6.Link2.MARKER_30  &
   to_point = .Mechanism_6.Link2.x2  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Mechanism_6.MEA_PT2PT_1  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Mechanism_6.general_motion_1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape plate  &
   plate_name = .Mechanism_6.Link4.PLATE_1  &
   width = (5.0cm)  &
   radius = (2.0cm)
!
geometry modify shape block  &
   block_name = .Mechanism_6.Slider8.BOX_2  &
   diag_corner_coords =   &
      (-0.1meter),  &
      (-0.15meter),  &
      (0.2meter)
!
geometry modify shape link  &
   link_name = .Mechanism_6.Link7.LINK_5  &
   width = (3.1324910215E-002meter)  &
   depth = (1.5662455108E-002meter)
!
geometry modify shape link  &
   link_name = .Mechanism_6.Link3.LINK_4  &
   width = (2.2360679775E-002meter)  &
   depth = (1.1180339887E-002meter)
!
geometry modify shape link  &
   link_name = .Mechanism_6.Link2.LINK_5  &
   width = (1.5E-002meter)  &
   depth = (7.5E-003meter)
!
material modify  &
   material_name = .Mechanism_6.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
model display  &
   model_name = Mechanism_6

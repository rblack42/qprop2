API
===

Qprop2
------

..	f:program:: qprop2

The main entry point for the program.

..  f:autosrcfile:: qpropf90

Loader
------

..  f:autosrcfile:: m_Loader.f90


m_Propeller
-----------

The *Propeller* module handles loading geometric ans aerodynamic data for the
selected propeller.

..  f:autosrcfile:: m_Propeller.f90

d_prop_data
-----------

All Propeller input data is encapsulate din the *prop_data* module.

..  f:autosrcfile:: d_prop_data.f90

m_Motor
-------

..  f:autosrcfile:: m_Motor.f90

d_motor_data
------------

..  f:autosrcfile:: d_motor_data.f90
    :search_mode: basename

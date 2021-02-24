// All on 
"All" diag_enable true;
// All off 
"All" diag_enable false;

// Eveything AI releated 
 
"AIAiming" diag_enable true; //shows vectors (lines) of AI aiming at known target
"AIBrain" diag_enable true; //general informations about AI brain, combat mode and fsm state
"AIDynamicError" diag_enable true; //shows value of dynamically calculated AI aiming error
"AISkill" diag_enable true; // shows value of skill, plus global coefficients, as set by difficulty mode
"AISuppression" diag_enable true; //shows value of suppression
"AIDriving" diag_enable true; //Shows various information about AI driving and path in real time.


// Dynamic Simulation 

"DynSimEntities" diag_enable true; //Displays the map overlay with yellow coloured activation boxes around each dynamically simulated (empty) object.
"DynSimGrid" diag_enable true; // Displays the map overlay with the most detailed Dynamic Simulation grid.
"DynSimGroups" diag_enable true; //Displays the map overlay with side coloured activation boxes around each dynamically simulated group.

// Animations
"Animation" diag_enable true; //displays current animation state, actions being used and target animation states depending on the actions
"AnimSrcTarget" diag_enable true; // displays all animation sources and their values for the model under the cursor
"AnimSrcUnit" diag_enable true; //displays all animation sources and their values for the player's vehicle (or his gun in case of a soldier)

//Physx
"EPEVehicle" diag_enable true; //displays gearbox, friction, thrust, brake and various parameters of a PhysX vehicle
"EPEForce" diag_enable true; //displays PhysX forces applied on the vehicle
"Force" diag_enable true; // displays some other forces with their names
"Suspension" diag_enable true; //displays status of suspension for each wheel of a PhysX vehicle

//Misc

"HitPoints" diag_enable true; //displays status of hit points of the player's vehicle and vehicle under the cursor
"Mines" diag_enable true; // displays nearby mines, their properties and radius
"Particles" diag_enable true; // displays what particles are used in scene and their count
"ParticleNames" diag_enable true; // attaches a name to each particle effect used so that it may be identified
"Shots" diag_enable true; //visualizes projectiles and their paths, hits and ricochets, guidance, seek radius and laser and artillery targets; shows details about hit contacts, penetration, projectile speed, guidance and missile phases
"SurfaceUnder" diag_enable true; //- displays the per-foot surface information on which a unit is standing
"CursorTargetObject" diag_enable true; // CursorTargetObject - Shows name of cursor object and it is distance to the player. Max distance in 50 meters

/*There is an additional diagnostic command used to adjust (by merging) configs on-the-fly without the need of restarting the game 
(Warning: there are some minor issues like CTD while exiting the game):
It is possible to update rvmats and textures on-the-fly while using "local data" 
- unpacked data in the same structure as the game sees them. 
You simply need to adjust rvmats or textures and it should affect the game as soon as you task back into it. 
There may be some visual artifacts; it is always worth to give it one more go with packed data.*/



//live Config reloads example 

diag_mergeConfigFile ["O:\Arma3\A3\Stuff_F\config.cpp"] 
Tyrus Malmstrom
CS410 :: Introduction to Computer Graphics
Project 5 README file


.::~Instructions for Compiling and Running my Code~::.

		 ~Compilation~
(1) => I have created a Makefile that compiles my program into an executable called: 'raytracer'.
       - To compile my program, type in: 'make', which will:
       	 -> First, clean up the project directory by default
	 -> Then compile and link each class individually.
	 -> It is essentially the same command as if the user were to type: 'make clean all'
       If it was a successful compilation, a success message print out at the bottom.
       If a recompile is necessary, the user may execute the same command as stated above,
       or the user may explicitly type: 'make clean all', which will remove all the .o files as well as the current
       executable name and then recompile all individual classes again.

       		  ~Running my Code (Execution)~
(2) => There are 2 ways of invoking my program. This is because one of the  ways renders my masterwork.png image and the other way(s)
       render my assignment 4 scenes. They are as follows:

       1) To execute my program to render the masterwork.png image:
        - The user *only need to type in the executable name*:
       	  -> Example:
	     ./raytracer
        - This will render my final, master scene.
        - A few remarks regarding my master_scene.txt file:
       	  -> The rendered image is 10K by 10K image... but don't worry! It renders in under 12 seconds! So not too bad!
	  -> There are 7 total spheres in scene, with 2 light sources.

       2) To execute my mprogram to render the Assignment 4 scenes:
       	  - The user needs to type in the executable name with the scene_x.txt file they wish to render, finally supplying an out.png image name:
	    -> Example:
	       ./raytracer scene2.txt scene2_out.png
	    - This will render the specified scene2.txt file writing it as scene2_out.png
	    - All this scenes remain unchanged from Assignment 4.

.::~Important Note~::.
- For this Assignment, Assignment 5, I converted my out-put images from PPM to PNG. Saves a lot of memory!

.::~Closing Statement~::.
- I just want to take the time to say thank you Jake and professor Beveridge. This was such an amazing class.

As always, this was an awesome assignment!

Best,
Tyrus Malmstrom.

Makefile Layout
###############

..  include::   /header.inc

The goal of this project is to keep things simple for beginning students. That
means there should only be one file they need to modify, and that file should
be super short. Admittedly, that means they will not spend much time looking at
th actual Makefile code, but I go over each module in this system, explaining
what it does. By doing that, they have a chance to learn more about how Make_
actually does its magic.

Project Makefile
****************

I assume that every project created lives in a folder named with the project
name. That name will be useful, so we capture it in the top level Makefile

Each project involves different components. For example, a project may (should)
include documentation, which I set up using Python Sphinx_ for all student
work. Some projects involve graphics, and the graphics components are kept
separated from the rsest of the project code for reasons that will be explained
later. 

A project may use C++, Python, or Assembly Language in my classes, so I
identify the language requirements as well. Note that some projects may need
support for any or all of these languages.

Makefile Modules
****************

All parts of the Makefile system that should never be modified by a student are
kept in a separate folder. That folder could be located in the project
repository, but simce these modules are used in many projects, it might make
sense to store then in a single place on the system, and simple reference that
location in the Makefile. The downside of this approace is that the project
repository is not completely self contained. Git_ supports cloning a repository
with dependend sun projects in one command, which solves this problem, at the
expense of a more complicated clone command. For now, I am going to recommend
that students simple clone this project repository on their systems, then
include the path to that location in their project Makefile.



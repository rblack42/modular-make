Top-Level Makefile
##################

..  vim:filetype=rst spell:

The major components of this ``make`` system are all included in the top-level
project ``Makefile``. That keeps this file extremely simple. All it has in it
is a few definitions to extract the project name from the current directory,
then it includes a component that detects what platform you are using.

Here is the ``Makefile`` for this test project:

..  literalinclude::    ../../Makefile
    :linenos:
    :caption: Makefile

Detecting the OS
****************

In order to make this system work on any platform, I separated components of
the system into subdirectories so that components specific to each platform get
loaded when ``make`` runs. Here is the component that figures out what system
you are using:

..  literalinclude::    ../../mk/os_detect.mk
    :linenos:
    :caption: mk/os_detect.mk

Debugging the System
********************

To assist in debugging the system, I found a neat way to print out all the user
defined variables in the ``Makefile``. Here is that code:

..  literalinclude::    ../../mk/debug.mk
    :linenos:
    :caption: mk/debug.mk

Help System
***********

 Finally, there is a simple help system that relies on a short Python Script.
 Basically, on each ``make`` ``target`` line, after the dependencies, you add a
 comment that begins with two hash marks, then continues to the end of the
 line. The Python script scans all the defined ``Makefile`` components looking
 for these markers, then produces a table showing what is available.

 .. literalinclude::    ../../mk/help.mk
    :linenos:
    :caption: help.mk

 And here is the heper Python scrips

 .. literalinclude::    ../../mk/pyhelp.py
    :linenos:
    :caption: mk/pytest.py


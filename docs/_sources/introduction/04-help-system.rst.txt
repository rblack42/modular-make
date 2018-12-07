Makefile Help System
####################

.. include::   /header.inc

In searching GitHub_ for ideas on how to structure this system, I ran across
several interesting approaches to generating a help system. However, most of
those I found relied on tools only available on Linux/Mac systems, leaving out
those who use Windows. The solution is simple, but it requires users on those
Windows systems to have one simple tool installed that can do the work needed
in several places in this system: Python.

Python is usually available in Linux/Mac systems, and is an easy tool to
install on Windows. However, I am using Python3, which means users might need
to install the latest Python on their system.

Adding Help Messages
********************

The help system used in ``modular-make`` placed a short tex message on any
target lines the user might like to run, The message will start after a marker,
consisting of two successive sharp characters (``##``), and continuing to the
end of the target line.

A simple Python script will scan all loaded Makefile component files, and
produce a display of the target names, and the help message.

Here is the Python script:

..  literalinclude:: ../../mk/pyhelp.py
    :linenos:
    :caption: mk/pyhelp.py

The ``help`` target looks like this:

..  literalinclude::  ../../mk/help.mk
    :linenos:
    :caption: mk/help.mk

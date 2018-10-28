Introduction
############

I have been teaching students how to build projects using the ``command line``
on all major platforms for years. I also introduce them to the ``Gnu Make`` tool, a
powerful build tool used by millions of developers. Sadly, I am in the minority
when it comes ot getting students set up to work this way.

This project is an effort to modularize a ``Makefile`` suitable for use in my
Python, C/C++, and COmputer Architecture classes. The basic setup should work
on any platform with no changes.

Project Structure
******************

Use of this ``Makefile`` setup assumes a basic project organization that should be
usable for most student projects, even fairly large ones. The system needs
Python to perform some of the magic, since many ``Make`` setups depend on features
only available to builders working on Mac/Linux systems. I decided to add a few
small Python scripts, driven by ``Make`` to get some things done.

Here is the basic project setup I use:

..  code-block:: text

    +- ProjectName
        |
        +- src/ - holds user part of application
        |
        +- lib/ - all application components live here
        |
        +- include/ - header files
        |
        +- tests/ - unit tests
        |
        +- rst/ - reStructuredText documentation (Sphinx)
        |
        +- docs/ - html pages published on GitHub

Required Tools
**************

This system assumes that you are using a fairly common set of build tools.
Specifically, these tools shuld all be installed and able to be run from a
``command line`` shell:

    * ``Gnu Make`` - the build tool
    * ``Gnu C/C++`` - modern compiler tool set
    * ``Python 3+`` (3.7 currently) - used for documentation and ``make`` helper scripts
    * ``Git`` - source code management

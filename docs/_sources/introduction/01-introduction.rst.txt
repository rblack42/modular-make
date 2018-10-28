Introduction
############

I have been teaching students how to build projects using the ``command line`` on all major platforms for years. I also introduce them to the Gnu Make tool, a powerful build tool used by millions of developers. Sadly, I am in the minority when it comes ot getting students set up to work this way.

THis project is an effort to modularize a Makedile suitabl for use in my Python, C/C++, and COmputer Architecture classes. The basic setup should work on amy platform with no changes.

Project Structure
******************

Use of this Makefile setup assumes a basic project organization that should be usable for most student projects, even fairly large ones. The system needs Python to perform some of the magic, since many Make setups depend on features only available to builders working on Mac/Linux systems. I decided to add a few small Python scripts, drivem by ``Make`` to get some things done.

Required Tools
**************

This system assumes that you are using a fairly common set of build tools. Specifically, these tools shuld all be installed and able to be run from a ``command line`` shell:

    * Gnu Make - the build tool
    * Gnu C/C++ - modern compiler tool set
    * Python 3+ (3.7 currently) - used for documentation and i``make`` helper scripts
    * Git - source code management

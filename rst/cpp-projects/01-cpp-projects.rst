C/C++ Projects
##############

..  vim:filetype=rst spell:

My recommended structure for C/C++ projects puts most code in a ``lib``
subdirectory. In order to separate major project components, you can create
subdirectories under ``lib``. However, doing so introduces a problem if we want
``make`` to find source files automatically. To solve this problem, I use
another simple Python script to search for code files. 

This script recursively searched under the named directory for all files ending
with a specified extension:

..  literalinclude:: ../../mk/pyfind.py
    :linenos:
    :caption: mk/pyfind.py

Here is the `Makefile`` component that uses this script:

..  literalinclude::    ../../mk/cppproj.mk
    :linenos:
    :caption: mk/cppproj.mk

This script searches all subdirectories under the named directory for files
ending with the indicated extension. It then builds another list of object
files. There is one trick that gets a list of object files using the standard
Windows backslah path separater. This is needed so the ``del`` command will
work properly when we set up a ``clean`` target on a PC.




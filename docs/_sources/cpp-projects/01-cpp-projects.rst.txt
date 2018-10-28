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



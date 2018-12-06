Detecting Hardware
##################

.. include::   /header.inc

The biggest problem faced when teaching classes in software development is the
number of different systems presented by students. SOme have the latest, most
powerful systems available, some have hand-me-down systems littered with
programs no on even understands why they are on the system. All of this sytems
need to be handled, so the first job of the build system is to identify the
exact machine setup the student is using.

In the Linus world, there ia a common tool thta does this: ``autoconfig``. This tool runs an extensiive check of all the software components it can find on the machine, and determines what tools are available to build the software. Unfortunately. such a tool is not really available on PC systems, so we need to do something differemt.


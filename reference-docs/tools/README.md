CityGML 3.0 Tools
===========

The CityGML Conceptual Model is a UML model maintained using SPARX Enterprise Architect. The OGC Specification for the CityGML Conceptual Model must be a faithful transcription of the UML model into an AsciiDoc document. This process must be automated to the greatest extent possible. This directory contains the tools developed for that purpose.

Abstract Test Suites and Requirements:

The standardization target for a UML conceptual model is the Implementation Specifications for implementing that model. The requirements and Abstract Test Suite for a conformant implementation specification are the same regardless of the classes implemented. So it is possible to automate the generation of this content using shell scripts and templates. The templates can be found in the Templates directory. The shell scripts used for this purpose use the (package name)-gen.sh file name convention.  Build.sh is a shell script which executes all of the *-gen.sh scripts.

Shell scripts can be corrupted by the addition of a carrage return (\r) to the line feed (\n) at the end of a line. This change can prevent the shell scripts from executing. The shell script dos2unix.sh will strip (\r) characters from all *-gen.sh files. Users may need to execute the "sed" command used by dos2unix on the command line if dos2unix.sh or Build.sh become corrupted.  


CityGML Template:

Enterprise Architect supports publication of the UML model as a report in RTF format. The contents and structure of that report is governed by a template. EA provides a number of built-in templates, or you can build your own. The CityGML template is a custom template designed to produce AsciiDoc formatted data dictionaries. Unfortunately Enterprise Architect does not allow you to execute the report in plane text. The most effective work around is to display the RTF file in a word processor, then cut the content and past it into the AsciiDoc file.




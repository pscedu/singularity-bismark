--
-- bismark 0.22.3 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: A tool to map bisulfite converted sequence reads and determine cytosine methylation states."

whatis("Name: bismark")
whatis("Version: 0.22.3")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: A tool to map bisulfite converted sequence reads and determine cytosine methylation states.")

help([[
bismark 0.22.3
-----------

Description
-----------
A tool to map bisulfite converted sequence reads and determine cytosine methylation states.

To load the module, type

> module load bismark/0.22.3

To unload the module, type

> module unload bismark/0.22.3

Documentation
-------------
https://www.bioinformatics.babraham.ac.uk/projects/bismark/

For help type the name of the tool and -h, for example

> bismark --help

Repository
----------
https://github.com/samtools/bismark

Tools included in this module are

* bismark
* bismark_genome_preparation
* bismark_methylation_extractor
* bismark2report
* bismark2summary
]])

local package = "bismark"
local version = "0.22.3"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)

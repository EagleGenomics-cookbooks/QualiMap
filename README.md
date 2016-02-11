# QualiMap

Description
===========
This cookbook installs QualiMap 2, a platform-independent application written in Java and R that provides both a 
Graphical User Inteface (GUI) and a command-line interface to facilitate the quality control of 
alignment sequencing data and its derivatives like feature counts.

http://qualimap.bioinfo.cipf.es/

Requirements
============

## Platform:

* Centos 6.6

Notes
=====
The file is unzipped in /usr/local/qualimap_[VERSION] which contains the QualiMap executable.
A symbolic link is created in /usr/local/bin to this file, which you can access as long as /usr/local/bin
is in your PATH. 

Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[QualiMap]) or a cookbook (include_recipe 'QualiMap')


## Testing
To test the recipe we use chef test kitchen:

kitchen converge default-centos65 

kitchen login default-centos65

kitchen verify default-centos65

kitchen destroy default-centos65

License and Authors
===================

* Authors:: Bart Ailey (<chef@eaglegenomics.com>)
* Authors:: Dan Barrell (<chef@eaglegenomics.com>)
* Authors:: Nick James (<chef@eaglegenomics.com>)

Copyright:: 2016, Eagle Genomics Ltd, Apache License, Version 2.0
    
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

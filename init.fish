# docker-compose-plugin initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies
source $path/functions/__dco.init.fish
__dco.init

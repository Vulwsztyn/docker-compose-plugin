function __dco.destroy
  for ab in $__dco_plugin_abbreviations
      abbr -e $ab
  end
  set -Ue __dco_plugin_abbreviations
  set -Ue __dco_plugin_initialized
end
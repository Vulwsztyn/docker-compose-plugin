function __dco.init
  function __dco.create_abbr -d "Create Docker Compose plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    # global scope abbr is default in fish 3.6.0+
    abbr -a -g $name $body

    set -a __dco_plugin_abbreviations $name
  end

  # Provide a smooth transition from universal to global abbreviations by
  # deleting the old univeral ones.  Can be removed after fish 3.6 is in
  # wide-spread use, i.e. 2024. __dco.destroy should also be removed
  # at the same time.
  if set -q __dco_plugin_initialized
    __dco.destroy
  end

  
  # kubectl abbreviations

  # This command is used a LOT both below and in daily life
  
  __dco.create_abbr dco docker compose
  __dco.create_abbr dcb docker compose build
  __dco.create_abbr dce docker compose exec
  __dco.create_abbr dcps docker compose ps
  __dco.create_abbr dcrestart docker compose restart
  __dco.create_abbr dcrm docker compose rm
  __dco.create_abbr dcr docker compose run
  __dco.create_abbr dcstop docker compose stop
  __dco.create_abbr dcup docker compose up
  __dco.create_abbr dcupb docker compose up --build
  __dco.create_abbr dcupd docker compose up -d
  __dco.create_abbr dcupdb docker compose up -d --build
  __dco.create_abbr dcdn docker compose down
  __dco.create_abbr dcl docker compose logs
  __dco.create_abbr dclf docker compose logs -f
  __dco.create_abbr dcpull docker compose pull
  __dco.create_abbr dcstart docker compose start
  __dco.create_abbr dck docker compose kill

  # Cleanup declared functions
  functions -e __dco.create_abbr
end

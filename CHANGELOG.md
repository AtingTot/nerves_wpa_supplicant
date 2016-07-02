# Changelog

## v0.2.2

  * Bug fixes
    * Invalid network settings would crash `set_network`. Now they
      return errors, since some can originate with bad user input.
      E.g., a short password

## v0.2.1

  * Bug fixes
    * Fixes from integrating with nerves_interim_wifi

## v0.2.0

Renamed from `wpa_supplicant.ex` to `nerves_wpa_supplicant``

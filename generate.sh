#!/usr/bin/env bash

csvgrep -c type -r "large|medium" source/airports.csv | csvcut -c iata_code,latitude_deg,longitude_deg,iso_country,municipality > airports.csv

ogr2ogr -f "GeoJSON" airports.geojson airports.csv -oo X_POSSIBLE_NAMES=longitude_deg -oo Y_POSSIBLE_NAMES=latitude_deg
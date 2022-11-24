#!/usr/bin/env bash

csvcut -c municipality,type,iata_code,latitude_deg,longitude_deg,iso_country source/airports.csv > airports.csv
ogr2ogr -f "GeoJSON" airports.geojson airports.csv -oo X_POSSIBLE_NAMES=longitude_deg -oo Y_POSSIBLE_NAMES=latitude_deg

csvgrep -c type -r "large|medium" -c scheduled_service -r "yes" source/airports.csv | csvcut -c municipality,type,iata_code,latitude_deg,longitude_deg,iso_country > airports_large_medium.csv
ogr2ogr -f "GeoJSON" airports_large_medium.geojson airports_large_medium.csv -oo X_POSSIBLE_NAMES=longitude_deg -oo Y_POSSIBLE_NAMES=latitude_deg

csvgrep -c type -r "large" -c scheduled_service -r "yes" source/airports.csv | csvcut -c municipality,iata_code,latitude_deg,longitude_deg,iso_country > airports_large.csv
ogr2ogr -f "GeoJSON" airports_large.geojson airports_large.csv -oo X_POSSIBLE_NAMES=longitude_deg -oo Y_POSSIBLE_NAMES=latitude_deg
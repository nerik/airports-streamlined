#!/usr/bin/env bash
csvgrep -c type -r "large|medium" source/airports.csv | csvcut -c iata_code,latitude_deg,longitude_deg,iso_country,municipality > airports.csv
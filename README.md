# Airports-streamlined

This is a simple list in CSV and GeoJSON formats of worldwide major airports, geocoded, with IATA codes, municipality and country codes.
Extracted from the main dataset of the [OurAirports](https://ourairports.com/data/) project.

## Run

You need to install [csvkit](https://csvkit.readthedocs.io/en/latest/index.html) and gdal (for GeoJSON output), then:

```
./generate.sh
```
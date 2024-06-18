SELECT
    *
FROM read_csv_auto('flights.csv')
WHERE
    UniqueCarrier = {{ context.params.carrier }}
    OR DestCityName LIKE {{ context.params.city }}
;

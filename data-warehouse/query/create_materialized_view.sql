CREATE MATERIALIZED VIEW max_waste_stats AS
SELECT ds.city, f.stationid, dt.trucktype, max(f.wastecollected) as max_wastecollected
FROM facttrips f
LEFT JOIN dimtruck dt ON dt.truckid = f.truckid
LEFT JOIN dimstation ds ON ds.stationid = f.stationid
GROUP BY ds.city, f.stationid, dt.trucktype
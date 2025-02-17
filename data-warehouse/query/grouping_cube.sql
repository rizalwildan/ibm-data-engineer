SELECT f.stationid, dd.year, ds.city, sum(f.wastecollected) AS total_wastecollected
FROM facttrips f
JOIN mydimdate dd ON dd.dateid = f.dateid
JOIN dimstation ds ON ds.stationid = f.stationid
GROUP BY CUBE(dd.year, ds.city, f.stationid)
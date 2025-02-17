SELECT stationid, trucktype, SUM(wastecollected) AS total_wastecollected
FROM facttrips f
LEFT JOIN dimtruck d ON f.truckid = d.truckid
GROUP BY GROUPING SETS(stationid, trucktype);
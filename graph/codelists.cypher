CREATE (WD16:`_geography_group_` {code: 'WD16', label: 'Wards', year: '2016'})
CREATE (LAD16:`_geography_group_` {code: 'LAD16', label: 'Local Authority Districts', year: ' 2016'})
CREATE (CTY16:`_geography_group_` {code: 'CTY16', label: 'Counties', year: ' 2016'})
CREATE (GOR10:`_geography_group_` {code: 'GOR10', label: 'Regions', year: ' 2010'})
CREATE (CTRY16:`_geography_group_` {code: 'CTRY16', label: 'Countries', year: ' 2016'})
CREATE (HIERAG16:`_geography_hierarchy_` {code: 'HIERAG16', label: 'Administrative geography', year: '2016'})
CREATE
(WD16)-[:usedBy]->(HIERAG16),
(LAD16)-[:usedBy]->(HIERAG16),
(CTY16)-[:usedBy]->(HIERAG16),
(GOR10)-[:usedBy]->(HIERAG16),
(CTRY16)-[:usedBy]->(HIERAG16)
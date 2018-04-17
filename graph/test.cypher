MATCH (parent:`geography_group` { code:'CTRY16' })
WITH parent (node:`geography_location` { code:'N92000002',label:'Northern Ireland' })-[:includedIn]->(parent);
MATCH (parent:`geography_group` { code:'CTRY16' })
WITH parent (node:`geography_location` { code:'S92000003',label:'Scotland' })-[:includedIn]->(parent);
MATCH (parent:`geography_group` { code:'CTRY16' })
WITH parent (node:`geography_location` { code:'W92000004',label:'Wales' })-[:includedIn]->(parent);
MATCH (parent:`geography_group` { code:'CTRY16' })
WITH parent(node:`geography_location` { code:'E92000001',label:'England' })-[:includedIn]->(parent);




MATCH (u:`geography_group` { code:'CTRY16' }), (r:`geography_location` { code:'S92000003'})
CREATE (r)-[:usedBy]->(u)


S12000036
S12000036

MATCH (u:`geography_group` { code:'LAD16' }), (r:`geography_location` { code:'S12000036'})
MATCH (u:`geography_group` { code:'CTRY16' }), (r:`geography_location` { code:'S92000003'})
CREATE (r)-[:usedBy]->(u)

MATCH (parent:`geography_group` { code:'LAD16' })
, (node:`geography_location` { code:'S12000036'}) WITH parent,node CREATE (node)-[:hasParent]->(parent);


MATCH (parent:`geography_group` { code:'LAD16' })
, (node:`geography_location` { code:'S12000013',label:'Na h-Eileanan Siar' })  
WITH parent,node CREATE (node)-[:hasParent]->(parent);

MATCH (u:`geography_group` { code:'LAD16' }), (r:`geography_location` { code:'S12000036'})
WITH u,r CREATE (u)-[:hasParent]->(r);


MATCH (parent:`geography_group` { code:'LAD16' })
, (node:`geography_location` { code:'S12000013',label:'Na h-Eileanan Siar' })-[:hasParent]->(parent);


replace 'parent:`_generic_hierarchy_node_1234`' with 'parent:`geography_group`'
replace 'node:`_generic_hierarchy_node_1234`' with 'node:`geography_location`'
replace 'WITH parent CREATE' with ','
replace '-[:hasParent]->(parent);' with ' 
WITH parent,node CREATE (node)-[:hasParent]->(parent);'
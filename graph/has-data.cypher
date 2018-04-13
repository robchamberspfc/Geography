CREATE (child1:node {title: 'remain', has_data: 'true'})
CREATE (child2:node {title: 'remain', has_data: 'true'})
CREATE (parent1:node {title: 'remain', has_data: 'true'})

CREATE (child3:node {title: 'gone', has_data: 'false'})
CREATE (child4:node {title: 'gone', has_data: 'false'})
CREATE (parent2:node {title: 'remain', has_data: 'true'})

CREATE (child5:node {title: 'gone', has_data: 'false'})
CREATE (child6:node {title: 'gone', has_data: 'false'})
CREATE (parent3:node {title: 'gone', has_data: 'false'})

CREATE (child7:node {title: 'remain', has_data: 'true'})
CREATE (child8:node {title: 'remain', has_data: 'true'})
CREATE (parent4:node {title: 'remain', has_data: 'false'})

CREATE (child9:node {title: 'remain', has_data: 'true'})
CREATE (child10:node {title: 'gone', has_data: 'false'})
CREATE (parent5:node {title: 'remain', has_data: 'false'})

CREATE (child11:node {title: 'remain', has_data: 'true'})
CREATE (child12:node {title: 'gone', has_data: 'false'})
CREATE (parent6:node {title: 'remain', has_data: 'true'})

CREATE (child13:node {title: 'remain', has_data: 'false'})
CREATE (child14:node {title: 'gone', has_data: 'false'})
CREATE (parent7:node {title: 'remain', has_data: 'false'})

CREATE (child15:node {title: 'remain', has_data: 'true'})


CREATE (uberparent:node {title: 'uberparent', has_data: 'true'})

CREATE
 (child1)-[:hasParent]->(parent1),
 (child2)-[:hasParent]->(parent1),

(child3)-[:hasParent]->(parent2),
(child4)-[:hasParent]->(parent2),

(child5)-[:hasParent]->(parent3),
(child6)-[:hasParent]->(parent3),

(child7)-[:hasParent]->(parent4),
(child8)-[:hasParent]->(parent4),

  (child9)-[:hasParent]->(parent5),
 (child10)-[:hasParent]->(parent5),

(child11)-[:hasParent]->(parent6),
 (child12)-[:hasParent]->(parent6),

 (child13)-[:hasParent]->(parent7),
 (child14)-[:hasParent]->(parent7),

 (child15)-[:hasParent]->(child13),

(parent1)-[:hasParent]->(uberparent),
(parent2)-[:hasParent]->(uberparent),
(parent3)-[:hasParent]->(uberparent),
(parent4)-[:hasParent]->(uberparent),
(parent5)-[:hasParent]->(uberparent),
(parent6)-[:hasParent]->(uberparent),
(parent7)-[:hasParent]->(uberparent)

;
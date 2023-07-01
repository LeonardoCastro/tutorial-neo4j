LOAD CSV WITH HEADERS FROM "" AS line:

MERGE 
(p1:person {name: line.P1, position: line.P1_role, a_random_number: line.P1_number, FT: line.P1_FT}),
(c1:place {name: line.P1_city, distance_from_london: line.P1_distance}),
(p1)-[:LIVES_IN]->(c1),

(p2:person {name: line.P2, position: line.P2_role, a_random_number: line.P2_number, FT: line.P2_FT}),
(c2:place {name: line.P1_city, distance_from_london: line.P1_distance}),
(p2)-[:LIVES_IN]->(c2),

CREATE
(p1)-[:WORKS_WITH {project: line.Name_project}]->(p2)


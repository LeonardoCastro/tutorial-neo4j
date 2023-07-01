CREATE

(daniele:person {name:"Daniele", position:"Senior PDRA", a_random_number: 10, FT:true}),
(omar:person {name:"Omar", position:"Head of Group", a_random_number: 100, FT:true}),
(kat:person {name:"Kat", position:"PDRA", a_random_number:40, FT:true}),
(zack:person {name:"Zack", position:"PDRA", a_random_number:48, FT:true}),
(hardik:person {name:"Hardik", position:"PDRA", a_random_number:30, FT:false}),
(alejandro:person {name:"Alejandro", position:"PDRA", a_random_number:85, FT:true}),
(santiago:person {name:"Santiago", position:"RA", a_random_number:17, FT:false}),
(david:person {name:"David", position:"RA", a_random_number:59, FT:false}),
(gisela:person {name:"Gisela", position:"RA", a_random_number:84, FT:false}),
(leonardo:person {name:"Leonardo", position:"PDRA", a_random_number:23, FT:true}),
(tuong:person {name:"Tuong", position:"Senior PDRA", a_random_number:48, FT:true}),
(rilwan:person {name:"Rilwan", position:"RA", a_random_number:92, FT:true}),

(oxford:place {name: "Oxford", distance_from_london: 92}),
(milano:place {name: "Milano", distance_from_london: 958.74}),
(london:place {name: "London", distance_from_london: 0}),
(sheffield:place {name: "Sheffield", distance_from_london: 269.4}),

(daniele)-[:LIVES_IN]->(milano),
(tuong)-[:LIVES_IN]->(sheffield),
(omar)-[:LIVES_IN]->(oxford),
(gisela)-[:LIVES_IN]->(oxford),
(kat)-[:LIVES_IN]->(london),
(hardik)-[:LIVES_IN]->(london),
(alejandro)-[:LIVES_IN]->(london),
(david)-[:LIVES_IN]->(london),
(santiago)-[:LIVES_IN]->(london),
(leonardo)-[:LIVES_IN]->(london),
(rilwan)-[:LIVES_IN]->(london),
(zack)-[:LIVES_IN]->(london),

(omar)<-[:WORKS_WITH {weight:4}]-(daniele),
(omar)<-[:WORKS_WITH {weight:2}]-(tuong),
(omar)<-[:WORKS_WITH {weight:4}]-(kat),
(omar)<-[:WORKS_WITH {weight:2}]-(hardik),
(omar)<-[:WORKS_WITH {weight:2}]-(alejandro),
(omar)<-[:WORKS_WITH {weight:2}]-(zack),
(omar)<-[:WORKS_WITH {weight:1}]-(leonardo),
(omar)<-[:WORKS_WITH {weight:1}]-(santiago),
(omar)<-[:WORKS_WITH {weight:1}]-(david),
(omar)<-[:WORKS_WITH {weight:1}]-(rilwan),
(omar)<-[:WORKS_WITH {weight:1}]-(gisela),

(daniele)-[:WORKS_WITH {weight:4}]->(omar),
(daniele)-[:WORKS_WITH {weight:1}]->(gisela),
(daniele)-[:WORKS_WITH {weight:1}]->(rilwan),
(daniele)-[:WORKS_WITH {weight:1}]->(alejandro),
(daniele)-[:WORKS_WITH {weight:1}]->(leonardo),
(daniele)-[:WORKS_WITH {weight:1}]->(hardik),

(tuong)-[:WORKS_WITH {weight: 2}]->(omar),
(tuong)-[:WORKS_WITH {weight: 1}]->(hardik),

(kat)-[:WORKS_WITH {weight:4}]->(omar),
(kat)-[:WORKS_WITH {weight:1}]->(david),
(kat)-[:WORKS_WITH {weight:1}]->(alejandro),
(kat)-[:WORKS_WITH {weight:1}]->(leonardo),
(kat)-[:WORKS_WITH {weight:1}]->(hardik),
(kat)-[:WORKS_WITH {weight:1}]->(santiago),

(hardik)-[:WORKS_WITH {weight:2}]->(omar),
(hardik)-[:WORKS_WITH {weight:1}]->(kat),
(hardik)-[:WORKS_WITH {weight:1}]->(santiago),
(hardik)-[:WORKS_WITH {weight:1}]->(leonardo),
(hardik)-[:WORKS_WITH {weight:1}]->(daniele),
(hardik)-[:WORKS_WITH {weight:1}]->(tuong),

(alejandro)-[:WORKS_WITH {weight: 2}]->(omar),
(alejandro)-[:WORKS_WITH {weight: 1}]->(kat),
(alejandro)-[:WORKS_WITH {weight: 1}]->(leonardo),
(alejandro)-[:WORKS_WITH {weight: 1}]->(daniele),

(zack)-[:WORKS_WITH {weight: 2}]->(omar),

(leonardo)-[:WORKS_WITH {weight: 1}]->(omar),
(leonardo)-[:WORKS_WITH {weight: 1}]->(daniele),
(leonardo)-[:WORKS_WITH {weight: 1}]->(hardik),
(leonardo)-[:WORKS_WITH {weight: 1}]->(alejandro),
(leonardo)-[:WORKS_WITH {weight: 1}]->(kat),

(santiago)-[:WORKS_WITH {weight: 1}]->(omar),
(santiago)-[:WORKS_WITH {weight: 1}]->(hardik),
(santiago)-[:WORKS_WITH {weight: 1}]->(kat),

(david)-[:WORKS_WITH {weight: 1}]->(omar),
(david)-[:WORKS_WITH {weight: 1}]->(kat),

(gisela)-[:WORKS_WITH {weight: 1}]->(omar),
(gisela)-[:WORKS_WITH {weight: 1}]->(rilwan),
(gisela)-[:WORKS_WITH {weight: 1}]->(daniele),

(rilwan)-[:WORKS_WITH {weight: 1}]->(omar),
(rilwan)-[:WORKS_WITH {weight: 1}]->(gisela),
(rilwan)-[:WORKS_WITH {weight: 1}]->(daniele),


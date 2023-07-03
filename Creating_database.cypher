CREATE (daniele:person {name:"Daniele", position:"Senior PDRA", a_random_number: 10, FT:true})
CREATE (omar:person {name:"Omar", position:"Head of Group", a_random_number: 100, FT:true})
CREATE (kat:person {name:"Kat", position:"PDRA", a_random_number:40, FT:true})
CREATE (zack:person {name:"Zack", position:"PDRA", a_random_number:48, FT:true})
CREATE (hardik:person {name:"Hardik", position:"PDRA", a_random_number:30, FT:false})
CREATE (alejandro:person {name:"Alejandro", position:"PDRA", a_random_number:85, FT:true})
CREATE (santiago:person {name:"Santiago", position:"RA", a_random_number:17, FT:false})
CREATE (david:person {name:"David", position:"RA", a_random_number:59, FT:false})
CREATE (gisela:person {name:"Gisela", position:"RA", a_random_number:84, FT:false})
CREATE (leonardo:person {name:"Leonardo", position:"PDRA", a_random_number:23, FT:true})
CREATE (tuong:person {name:"Tuong", position:"Senior PDRA", a_random_number:48, FT:true})
CREATE (rilwan:person {name:"Rilwan", position:"RA", a_random_number:92, FT:true})

CREATE (oxford:place {name: "Oxford", distance_from_london: 92})
CREATE (milano:place {name: "Milano", distance_from_london: 958.74})
CREATE (london:place {name: "London", distance_from_london: 0})
CREATE (sheffield:place {name: "Sheffield", distance_from_london: 269.4})

CREATE (daniele)-[:LIVES_IN]->(milano)
CREATE (tuong)-[:LIVES_IN]->(sheffield)
CREATE (omar)-[:LIVES_IN]->(oxford)
CREATE (gisela)-[:LIVES_IN]->(oxford)
CREATE (kat)-[:LIVES_IN]->(london)
CREATE (hardik)-[:LIVES_IN]->(london)
CREATE (alejandro)-[:LIVES_IN]->(london)
CREATE (david)-[:LIVES_IN]->(london)
CREATE (santiago)-[:LIVES_IN]->(london)
CREATE (leonardo)-[:LIVES_IN]->(london)
CREATE (rilwan)-[:LIVES_IN]->(london)
CREATE (zack)-[:LIVES_IN]->(london)

CREATE (omar)<-[:WORKS_WITH {weight:4}]-(daniele)
CREATE (omar)<-[:WORKS_WITH {weight:2}]-(tuong)
CREATE (omar)<-[:WORKS_WITH {weight:4}]-(kat)
CREATE (omar)<-[:WORKS_WITH {weight:2}]-(hardik)
CREATE (omar)<-[:WORKS_WITH {weight:2}]-(alejandro)
CREATE (omar)<-[:WORKS_WITH {weight:2}]-(zack)
CREATE (omar)<-[:WORKS_WITH {weight:1}]-(leonardo)
CREATE (omar)<-[:WORKS_WITH {weight:1}]-(santiago)
CREATE (omar)<-[:WORKS_WITH {weight:1}]-(david)
CREATE (omar)<-[:WORKS_WITH {weight:1}]-(rilwan)
CREATE (omar)<-[:WORKS_WITH {weight:1}]-(gisela)

CREATE (daniele)-[:WORKS_WITH {weight:4}]->(omar)
CREATE (daniele)-[:WORKS_WITH {weight:1}]->(gisela)
CREATE (daniele)-[:WORKS_WITH {weight:1}]->(rilwan)
CREATE (daniele)-[:WORKS_WITH {weight:1}]->(alejandro)
CREATE (daniele)-[:WORKS_WITH {weight:1}]->(leonardo)
CREATE (daniele)-[:WORKS_WITH {weight:1}]->(hardik)

CREATE (tuong)-[:WORKS_WITH {weight: 2}]->(omar)
CREATE (tuong)-[:WORKS_WITH {weight: 1}]->(hardik)

CREATE (kat)-[:WORKS_WITH {weight:4}]->(omar)
CREATE (kat)-[:WORKS_WITH {weight:1}]->(david)
CREATE (kat)-[:WORKS_WITH {weight:1}]->(alejandro)
CREATE (kat)-[:WORKS_WITH {weight:1}]->(leonardo)
CREATE (kat)-[:WORKS_WITH {weight:1}]->(hardik)
CREATE (kat)-[:WORKS_WITH {weight:1}]->(santiago)

CREATE (hardik)-[:WORKS_WITH {weight:2}]->(omar)
CREATE (hardik)-[:WORKS_WITH {weight:1}]->(kat)
CREATE (hardik)-[:WORKS_WITH {weight:1}]->(santiago)
CREATE (hardik)-[:WORKS_WITH {weight:1}]->(leonardo)
CREATE (hardik)-[:WORKS_WITH {weight:1}]->(daniele)
CREATE (hardik)-[:WORKS_WITH {weight:1}]->(tuong)

CREATE (alejandro)-[:WORKS_WITH {weight: 2}]->(omar)
CREATE (alejandro)-[:WORKS_WITH {weight: 1}]->(kat)
CREATE (alejandro)-[:WORKS_WITH {weight: 1}]->(leonardo)
CREATE (alejandro)-[:WORKS_WITH {weight: 1}]->(daniele)

CREATE (zack)-[:WORKS_WITH {weight: 2}]->(omar)

CREATE (leonardo)-[:WORKS_WITH {weight: 1}]->(omar)
CREATE (leonardo)-[:WORKS_WITH {weight: 1}]->(daniele)
CREATE (leonardo)-[:WORKS_WITH {weight: 1}]->(hardik)
CREATE (leonardo)-[:WORKS_WITH {weight: 1}]->(alejandro)
CREATE (leonardo)-[:WORKS_WITH {weight: 1}]->(kat)

CREATE (santiago)-[:WORKS_WITH {weight: 1}]->(omar)
CREATE (santiago)-[:WORKS_WITH {weight: 1}]->(hardik)
CREATE (santiago)-[:WORKS_WITH {weight: 1}]->(kat)

CREATE (david)-[:WORKS_WITH {weight: 1}]->(omar)
CREATE (david)-[:WORKS_WITH {weight: 1}]->(kat)

CREATE (gisela)-[:WORKS_WITH {weight: 1}]->(omar)
CREATE (gisela)-[:WORKS_WITH {weight: 1}]->(rilwan)
CREATE (gisela)-[:WORKS_WITH {weight: 1}]->(daniele)

CREATE (rilwan)-[:WORKS_WITH {weight: 1}]->(omar)
CREATE (rilwan)-[:WORKS_WITH {weight: 1}]->(gisela)
CREATE (rilwan)-[:WORKS_WITH {weight: 1}]->(daniele)


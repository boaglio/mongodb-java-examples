
CREATE TABLE REGION ( ID INT, NAME VARCHAR(100)) ;

ALTER TABLE REGION ADD PRIMARY KEY(ID);

INSERT INTO REGION VALUES(1,'Norte');
INSERT INTO REGION VALUES(2,'Nordeste');
INSERT INTO REGION VALUES(3,'Centro-Oeste');
INSERT INTO REGION VALUES(4,'Sudeste');
INSERT INTO REGION VALUES(5,'Sul');

CREATE TABLE LOCAL( ID INT, NAME VARCHAR(100), STATE VARCHAR(2)) ;

ALTER TABLE LOCAL ADD PRIMARY KEY(ID);

INSERT INTO LOCAL VALUES(1,'Maceio','AL');
INSERT INTO LOCAL VALUES(2,'Belém','PA');
INSERT INTO LOCAL VALUES(3,'Cuiabá','MT');
INSERT INTO LOCAL VALUES(4,'Cariri','CE');
INSERT INTO LOCAL VALUES(5,'Barreiras','BA');
INSERT INTO LOCAL VALUES(6,'Fortaleza','CE');
INSERT INTO LOCAL VALUES(7,'Brasília','DF');	
INSERT INTO LOCAL VALUES(8,'Vitória','ES');
INSERT INTO LOCAL VALUES(9,'Goiânia','GO');
INSERT INTO LOCAL VALUES(10,'Florianopolis','SC');
INSERT INTO LOCAL VALUES(11,'Salvador','BA');
INSERT INTO LOCAL VALUES(12,'São Vicente','SP');
INSERT INTO LOCAL VALUES(13,'Fortaleza','CE');
INSERT INTO LOCAL VALUES(14,'São José do Rio Preto','SP');
INSERT INTO LOCAL VALUES(15,'Natal','RN');
INSERT INTO LOCAL VALUES(16,'Juíz de Fora','MG');
INSERT INTO LOCAL VALUES(17,'Campo Grande','MS');	
INSERT INTO LOCAL VALUES(18,'São José dos Campos','SP');
INSERT INTO LOCAL VALUES(19,'Belo Horizonte','MG');
INSERT INTO LOCAL VALUES(20,'João Pessoa','PB');
INSERT INTO LOCAL VALUES(21,'Maringá','PR');
INSERT INTO LOCAL VALUES(22,'Rio de Janeiro','RJ');
INSERT INTO LOCAL VALUES(23,'Porto Alegre','RS');
INSERT INTO LOCAL VALUES(24,'Feira de Santana','BA');
INSERT INTO LOCAL VALUES(25,'São Paulo','SP');
INSERT INTO LOCAL VALUES(26,'Uberlândia','MG');
INSERT INTO LOCAL VALUES(27,'Rio do Sul ','SC');
INSERT INTO LOCAL VALUES(28,'Campinas','SP');

CREATE TABLE LOCAL_REGION( LOCAL_ID INT, REGION_ID INT) ;

ALTER TABLE LOCAL_REGION ADD PRIMARY KEY(LOCAL_ID,REGION_ID);

ALTER TABLE LOCAL_REGION ADD FOREIGN KEY (LOCAL_ID) REFERENCES LOCAL(ID);
ALTER TABLE LOCAL_REGION ADD FOREIGN KEY (REGION_ID) REFERENCES REGION(ID);

INSERT INTO LOCAL_REGION VALUES(1,2);
INSERT INTO LOCAL_REGION VALUES(2,1);
INSERT INTO LOCAL_REGION VALUES(3,3);
INSERT INTO LOCAL_REGION VALUES(4,2);
INSERT INTO LOCAL_REGION VALUES(5,2);
INSERT INTO LOCAL_REGION VALUES(6,2);
INSERT INTO LOCAL_REGION VALUES(7,3);	
INSERT INTO LOCAL_REGION VALUES(8,4);
INSERT INTO LOCAL_REGION VALUES(9,3);
INSERT INTO LOCAL_REGION VALUES(10,5);
INSERT INTO LOCAL_REGION VALUES(11,2);
INSERT INTO LOCAL_REGION VALUES(12,4);
INSERT INTO LOCAL_REGION VALUES(13,2);
INSERT INTO LOCAL_REGION VALUES(14,4);
INSERT INTO LOCAL_REGION VALUES(15,2);
INSERT INTO LOCAL_REGION VALUES(16,4);
INSERT INTO LOCAL_REGION VALUES(17,3);	
INSERT INTO LOCAL_REGION VALUES(18,4);
INSERT INTO LOCAL_REGION VALUES(19,4);
INSERT INTO LOCAL_REGION VALUES(20,2);
INSERT INTO LOCAL_REGION VALUES(21,5);
INSERT INTO LOCAL_REGION VALUES(22,4);
INSERT INTO LOCAL_REGION VALUES(23,5);
INSERT INTO LOCAL_REGION VALUES(24,2);
INSERT INTO LOCAL_REGION VALUES(25,4);
INSERT INTO LOCAL_REGION VALUES(26,4);
INSERT INTO LOCAL_REGION VALUES(27,5);
INSERT INTO LOCAL_REGION VALUES(28,4);

CREATE TABLE JUG( ID INT, NAME VARCHAR(30),DESCRIPTION VARCHAR(100),LOCAL_ID INT, URL VARCHAR(300)) ;

ALTER TABLE JUG ADD PRIMARY KEY(ID);

ALTER TABLE JUG ADD FOREIGN KEY (LOCAL_ID) REFERENCES LOCAL(ID);


INSERT INTO JUG VALUES(1,'ALJUG','Alagoas Java User Group', 1, 'http://java.net/projects/ALJUG'); 	
INSERT INTO JUG VALUES(2,'BelJUG','Belém Java User Group',2,'http://www.beljug.com.br');
INSERT INTO JUG VALUES(3,'CAJU','Cuiabá Java Users',3,'http://www.cajumt.com.br');
INSERT INTO JUG VALUES(4,'CaJUG','Cariri Java User Group',4,'http://www.cajug.org');
INSERT INTO JUG VALUES(5,'BarreirasJUG','Grupo de Usuários Java de Barreiras',5,'https://www.java.net/projects/barreirasjug');
INSERT INTO JUG VALUES(6,'CEJUG','Ceará Java User Group',6,'http://www.cejug.org');
INSERT INTO JUG VALUES(7,'DFJUG','Brasília Java Users Group',7,'http://www.dfjug.org');
INSERT INTO JUG VALUES(8,'ESJUG','JUG Espírito Santo',8,'http://www.esjug.org');
INSERT INTO JUG VALUES(9,'GoJava','Grupo de Usuários Java do Estado de Goiás',9,'http://www.gojava.org');
INSERT INTO JUG VALUES(10,'GUJavaSC','Grupo de Usuários Java de Santa Catarina',10,'http://gujavasc.org');
INSERT INTO JUG VALUES(11,'JAVA Bahia','Grupo de Usuários Java da Bahia',11,'http://javabahia.blogspot.com.br'); 
INSERT INTO JUG VALUES(12,'BSJUG','Baixada Santista Java Users Group',12,'https://isjavado.wordpress.com');
INSERT INTO JUG VALUES(13,'JavaCE','Comunidade Java do Ceará',13,'http://www.javace.org'); 	
INSERT INTO JUG VALUES(14,'JavaNoroeste','Grupo de Usuários Java do Noroeste',14,'http://www.javanoroeste.com.br');
INSERT INTO JUG VALUES(15,'JavaRN','Grupo de Usuários Java do Rio Grande do Norte',15,'http://javarn.org'); 	
INSERT INTO JUG VALUES(16,'JFJUG','Grupo de Usuários Java de Juíz de Fora',16,'http://www.jfjug.org/');
INSERT INTO JUG VALUES(17,'JUGMS','Grupo de Usuários Java do Mato Grosso do Sul',17,'http://www.jugms.com.br'); 	
INSERT INTO JUG VALUES(18,'JUG-Vale','Grupo de Usuários Java do Vale do Paraíba',18,'http://jugvale.com');
INSERT INTO JUG VALUES(19,'MGJUG','Grupo de Usuários Java de Minas Gerais',19,'http://www.mgjug.com.br');
INSERT INTO JUG VALUES(20,'BJUG','Paraíba Java User Group',20,'http://groups.google.com/group/pbjug');
INSERT INTO JUG VALUES(21,'RedFoot J Dukes','Grupo de Usuários Java do Norte do Paraná',21,'http://groups.google.com/d/forum/redfoot-jug'); 
INSERT INTO JUG VALUES(22,'RioJug','Rio Java User Group',22,'http://www.riojug.org');
INSERT INTO JUG VALUES(23,'RSJUG','Grupo de Usuários Java do Rio Grande do Sul',23,'http://www.rsjug.org'); 	
INSERT INTO JUG VALUES(24,'Sertão JUG','Grupo de Usuários Java de Feira de Santana',24,'https://www.sertaojug.dev.java.net');
INSERT INTO JUG VALUES(25,'SouJava','Sociedade de Usuários Java',25,'http://soujava.org.br'); 	
INSERT INTO JUG VALUES(26,'UAIJUG','O JUG do Triângulo Mineiro',26,'http://www.uaijug.com.br');
INSERT INTO JUG VALUES(27,'JAVale','Comunidade de Usuários Java do Alto Vale do Itajaí',27,'javaaltovale.blogspot.com');
INSERT INTO JUG VALUES(28,'SouJava Campinas','SouJava Campinas',28,'http://soujava.org.br/regionais/campinas/');


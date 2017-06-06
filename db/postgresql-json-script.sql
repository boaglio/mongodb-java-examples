
CREATE TABLE JUG_JSON (
 ID serial NOT NULL PRIMARY KEY,
 info json NOT NULL
);

INSERT INTO JUG_JSON VALUES
(1,'{"region": "Norte","jugs":[
{"name":"BelJUG","description":"Belém Java User Group","local":"Belém (PA)","url":"http://www.beljug.com.br"}
]}');

INSERT INTO JUG_JSON VALUES
(2,'{"region": "Nordeste","jugs":[
 {"name":"ALJUG","description":"Alagoas Java User Group","local":"Maceio","url":"http://java.net/projects/ALJUG"},
 {"name":"BarreirasJUG","description":"Grupo de Usuários Java de Barreiras","local":"Barreiras","url":"https://www.java.net/projects/barreirasjug"},
 {"name":"CEJUG","description":"Ceará Java User Group","local":"Fortaleza","url":"http://www.cejug.org"},
 {"name":"JAVA Bahia","description":"Grupo de Usuários Java da Bahia","local":"Salvador","url":"http://javabahia.blogspot.com.br"},
 {"name":"JavaCE","description":"Comunidade Java do Ceará","local":"Fortaleza","url":"http://www.javace.org"},
 {"name":"JavaRN","description":"Grupo de Usuários Java do Rio Grande do Norte","local":"Natal","url":"http://javarn.org"},
 {"name":"BJUG","description":"Paraíba Java User Group","local":"João Pessoa","url":"http://groups.google.com/group/pbjug"},
 {"name":"Sertão JUG","description":"Grupo de Usuários Java de Feira de Santana","local":"Feira de Santana","url":"https://www.sertaojug.dev.java.net"}
]}');

INSERT INTO JUG_JSON VALUES
(3,'{"region": "Centro-Oeste","jugs":[
{"name":"CAJU","description":"Cuiabá Java Users","local":"Cuiabá","url":"http://www.cajumt.com.br"},
{"name":"DFJUG","description":"Brasília Java Users Group","local":"Brasília","url":"http://www.dfjug.org"},
{"name":"GoJava","description":"Grupo de Usuários Java do Estado de Goiás","local":"Goiânia","url":"http://www.gojava.org"},
{"name":"JUGMS","description":"Grupo de Usuários Java do Mato Grosso do Sul","local":"Campo Grande","url":"http://www.jugms.com.br"}
]}');

INSERT INTO JUG_JSON VALUES
(4,'{"region": "Sudeste","jugs":[
{"name":"ESJUG","description":"JUG Espírito Santo","local":"Vitória","url":"http://www.esjug.org"},
{"name":"BSJUG","description":"Baixada Santista Java Users Group","local":"São Vicente","url":"https://isjavado.wordpress.com"},
{"name":"JavaNoroeste","description":"Grupo de Usuários Java do Noroeste","local":"São José do Rio Preto","url":"http://www.javanoroeste.com.br"},
{"name":"JFJUG","description":"Grupo de Usuários Java de Juíz de Fora","local":"Juíz de Fora","url":"http://www.jfjug.org/"},
{"name":"JUG-Vale","description":"Grupo de Usuários Java do Vale do Paraíba","local":"São José dos Campos","url":"http://jugvale.com"},
{"name":"MGJUG","description":"Grupo de Usuários Java de Minas Gerais","local":"Belo Horizonte","url":"http://www.mgjug.com.br"},
{"name":"RioJug","description":"Rio Java User Group","local":"Rio de Janeiro","url":"http://www.riojug.org"},
{"name":"SouJava","description":"Sociedade de Usuários Java","local":"São Paulo","url":"http://soujava.org.br"},
{"name":"UAIJUG","description":"O JUG do Triângulo Mineiro","local":"Uberlândia","url":"http://www.uaijug.com.br"},
{"name":"SouJava Campinas","description":"SouJava Campinas","local":"Campinas","url":"http://soujava.org.br/regionais/campinas/"}
]}');

INSERT INTO JUG_JSON VALUES
(5,'{"region": "Sul","jugs":[
{"name":"GUJavaSC","description":"Grupo de Usuários Java de Santa Catarina","local":"Florianopolis","url":"http://gujavasc.org"},
{"name":"RedFoot","description":"Grupo de Usuários Java do Norte do Paraná","local":"Maringá","url":"http://groups.google.com/d/forum/redfoot-jug"},
{"name":"RSJUG","description":"Grupo de Usuários Java do Rio Grande do Sul","local":"Porto Alegre","url":"http://www.rsjug.org"},
{"name":"JAVale","description":"Comunidade de Usuários Java do Alto Vale do Itajaí","local":"Rio do Sul","url":"http://javaaltovale.blogspot.com"}
]}');

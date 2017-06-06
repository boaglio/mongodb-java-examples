<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.boaglio.casadocodigo.mongodb.SeriadosDAO" %>
<%@ page import="com.boaglio.casadocodigo.mongodb.dto.Seriado" %>
<%@ page import="org.bson.types.ObjectId" %>
<%@ page import="java.util.*" %>

<html>
 <head>
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
 <br/>
 <div class="container">
  <div class="class="btn btn-primary btn-lg" role="alert"></div>
  <img src="tv.png" alt="logo" width="100"/>
  <h1>Meus seriados preferidos</h1>

<%
  String id = request.getParameter("id");
  String opt = request.getParameter("opt");

  SeriadosDAO dao = new SeriadosDAO();
  Seriado seriado = dao.findById(id);

  int p = 0;
  if (seriado.getPersonagens()!=null) {
   p=seriado.getPersonagens().size();
  }

  if (id!=null && id.length()>0 && opt!=null) {

      Seriado seriadoParaAlterar = new Seriado();
      seriadoParaAlterar.setId(new ObjectId(id));

	  if (opt.equals("alterar")) {

 	   seriadoParaAlterar.setNome( request.getParameter("nome") );

	   List<String>	personagens = new ArrayList<String>();
	   personagens.add(request.getParameter("personagem1"));
	   personagens.add(request.getParameter("personagem2"));
	   personagens.add(request.getParameter("personagem3"));
	   personagens.add(request.getParameter("personagem4"));
	   personagens.add(request.getParameter("personagem5"));
	   personagens.add(request.getParameter("personagem6"));
	   seriadoParaAlterar.setPersonagens(personagens);

	   dao.update(seriadoParaAlterar);

	   %>
	   <br/>
	   <div class="alert alert-warning">Seriado alterado!</div>
	   <%
	  }

	  if(opt.equals("remover"))
	  {
		dao.remove(id);
	   %>
	   <br/>
	   <br/>
	   <div class="alert alert-warning">Seriado removido!</div>
	    <%
	  }

  }
  else
  {
%>

  <div class="alert alert-success" role="alert">Alterar seriado</div>
   <form method="post" action="detalhe.jsp">
   <p>
    <div class="input-group">
     <span class="input-group-addon">Nome</span>
     <input type="text" name="nome" id="nome" class="form-control" value="<%=seriado.getNome()%>" placeholder="nome do seriado ?">
    </div>
    <div class="input-group">
     <span class="input-group-addon">Personagem 1</span>
     <input type="text" name="personagem1" id="personagem1" value="<%=p > 0 ? seriado.getPersonagens().get(0) : ""%>" class="form-control" placeholder="nome de um personagem ?">
    </div>
    <div class="input-group">
     <span class="input-group-addon">Personagem 2</span>
     <input type="text" name="personagem2" id="personagem2" value="<%=p > 1 ? seriado.getPersonagens().get(1) : ""%>" class="form-control" placeholder="nome de um personagem ?">
    </div>
    <div class="input-group">
     <span class="input-group-addon">Personagem 3</span>
     <input type="text" name="personagem3" id="personagem3" value="<%=p > 2 ? seriado.getPersonagens().get(2) : ""%>" class="form-control" placeholder="nome de um personagem ?">
    </div>
    <div class="input-group">
     <span class="input-group-addon">Personagem 4</span>
     <input type="text" name="personagem4" id="personagem4" value="<%=p > 3 ? seriado.getPersonagens().get(3) : ""%>" class="form-control" placeholder="nome de um personagem ?">
    </div>
        <div class="input-group">
     <span class="input-group-addon">Personagem 5</span>
     <input type="text" name="personagem5" id="personagem5" value="<%=p > 4 ? seriado.getPersonagens().get(4) : ""%>" class="form-control" placeholder="nome de um personagem ?">
    </div>
    <div class="input-group">
     <span class="input-group-addon">Personagem 6</span>
     <input type="text" name="personagem6" id="personagem6" value="<%=p > 5 ? seriado.getPersonagens().get(5) : ""%>" class="form-control" placeholder="nome de um personagem ?">
    </div>
    </p>
   <p>
    <input type="hidden" name="id" value="<%=seriado.getId()%>"/>
    <input type="hidden" name="opt" value="alterar"/>
    <input class="btn btn-primary btn-lg" type="submit" value="alterar !" />
   </p>
  </form>
  <form method="post" action="detalhe.jsp">
   <input type="hidden" name="id" value="<%=seriado.getId()%>"/>
   <input type="hidden" name="opt" value="remover"/>
   <input class="btn btn-primary btn-lg" type="submit" value="remover !" />
  </form>

<%
  }
%>

  <form method="post" action="index.jsp">
   <input class="btn btn-primary btn-lg" type="submit" value="lista de seriados" />
  </form>

 </div>
</body>
</html>
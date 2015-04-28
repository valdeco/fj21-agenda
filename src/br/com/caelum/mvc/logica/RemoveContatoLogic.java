package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {
	  
	@Override	
	public String executa(HttpServletRequest req, HttpServletResponse res)
	      throws Exception {
		
		// busca a conex�o pendurada na requisi��o
	    Connection connection = (Connection) req.getAttribute("conexao");

	    long id = Long.parseLong(req.getParameter("id"));

	    Contato contato = new Contato();
	    contato.setId(id);    
	    
	    // passe a conex�o no construtor
	    ContatoDao dao = new ContatoDao(connection);
	    dao.remove(contato);

	    System.out.println("Excluindo contato... ");
	    
	    return "mvc?logica=ListaContatosLogic";
	  }

	}
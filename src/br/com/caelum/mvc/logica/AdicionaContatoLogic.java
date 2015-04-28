package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AdicionaContatoLogic implements Logica {
	
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {	
				
	    Contato contato = new Contato();	    
	    contato.setNome(req.getParameter("nome"));
        contato.setEndereco(req.getParameter("endereco"));
        contato.setEmail(req.getParameter("email"));

        String dataEmTexto = req.getParameter("dataNascimento");
        Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
        Calendar dataNascimento = Calendar.getInstance();
        dataNascimento.setTime(date);

        contato.setDataNascimento(dataNascimento);
        
        // busca a conexão pendurada na requisição
	    Connection connection = (Connection) req
                .getAttribute("conexao");
			
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);
		
		System.out.println("Adicionando contato ... ");
		
		return "mvc?logica=ListaContatosLogic";
	}

}

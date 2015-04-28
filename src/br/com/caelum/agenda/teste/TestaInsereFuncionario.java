package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.FuncionarioDao;
import br.com.caelum.agenda.modelo.Funcionario;

public class TestaInsereFuncionario {

	public static void main(String[] args) {
		
		// pronto para gravar Funcionario
		Funcionario funcionario = new Funcionario();
		funcionario.setNome("Leandro");
		funcionario.setUsuario("leh");
		funcionario.setSenha("1111");

		// grave nessa conexao
		FuncionarioDao dao = new FuncionarioDao();

		// metodo elegante
		dao.adiciona(funcionario);

		System.out.println("Gravado!");

	}

}

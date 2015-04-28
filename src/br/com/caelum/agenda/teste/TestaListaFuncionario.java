package br.com.caelum.agenda.teste;

import java.util.List;

import br.com.caelum.agenda.dao.FuncionarioDao;
import br.com.caelum.agenda.modelo.Funcionario;

public class TestaListaFuncionario {

	public static void main(String[] args) {

		FuncionarioDao dao = new FuncionarioDao();
		List<Funcionario> funcionarios = dao.getLista();
		for (Funcionario funcionario : funcionarios) {
			System.out.println("Nome: " + funcionario.getNome());
			System.out.println("Usuario: " + funcionario.getUsuario());
			System.out.println("Senha: " + funcionario.getSenha() + "\n");

		}

	}

}

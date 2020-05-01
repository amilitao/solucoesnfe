package br.com.atacadao.solucoesnfe.builders;

import java.util.ArrayList;
import java.util.List;

import br.com.atacadao.solucoesnfe.model.Status;

public class StatusBuilder {
	
	 private List<Status> listaDeStatus = new ArrayList<>();

	    private StatusBuilder(Status status) {
	        listaDeStatus.add(status);
	    }

		/*
		 * public static StatusBuilder newStatus(TipoPreco tipoPreco, BigDecimal valor)
		 * { Produto livro = create("Livro 1", tipoPreco, valor); return new
		 * ProdutoBuilder(livro); }
		 */
		/*
		 * public static StatusBuilder newStatus() { Status status = create( "Livro 1",
		 * TipoPreco.COMBO, BigDecimal.TEN); return new ProdutoBuilder(livro); }
		 */

		/*
		 * private static Status create(String titulo, TipoPreco tipoPreco, BigDecimal
		 * valor) {
		 * 
		 * Produto livro = new Produto(); livro.setTitulo(titulo);
		 * livro.setDataLancamento(Calendar.getInstance()); livro.setPaginas(150);
		 * livro.setDescricao("Ótimo livro sobre testes");
		 * 
		 * return livro; }
		 */

		/*
		 * public StatusBuilder mais(int quantidade) {
		 * 
		 * Status base = listaDeStatus.get(0);
		 * 
		 * for (int i = 0; i < quantidade; i++) { listaDeStatus.add(create( "Livro " +
		 * i, preco.getTipoPreco(), preco.getValor())); } return this; }
		 */

	    public Status buildOne() {
	        return listaDeStatus.get(0);
	    }

	    public List<Status> buildAll() {
	        return listaDeStatus;
	    }

}

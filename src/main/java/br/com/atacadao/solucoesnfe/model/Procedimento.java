package br.com.atacadao.solucoesnfe.model;

import javax.persistence.Embeddable;
import javax.persistence.Lob;

@Embeddable
public class Procedimento {
	
	@Lob
	private String descricao;
	private TipoProcedimento tipo;
	
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public TipoProcedimento getTipo() {
		return tipo;
	}
	public void setTipo(TipoProcedimento tipo) {
		this.tipo = tipo;
	}
	
	

}

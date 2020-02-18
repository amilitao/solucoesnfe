package br.com.atacadao.solucoesnfe.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Status implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_status;
	private String codigo;
	private String descricao;
	private String procedimento;
	
	@Enumerated(EnumType.ORDINAL)
	private TipoDocumento tipoDocumento;		
	
	
	public Long getId_status() {
		return id_status;
	}
	public void setId_status(Long id_status) {
		this.id_status = id_status;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getProcedimento() {
		return procedimento;
	}
	public void setProcedimento(String procedimento) {
		this.procedimento = procedimento;
	}
	public TipoDocumento getTipoDocumento() {
		return tipoDocumento;
	}
	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}
	
	
	
	
	

}

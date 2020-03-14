package br.com.atacadao.solucoesnfe.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Status implements Serializable, Comparable<Status> {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_status;

	@NotBlank(message = "Este campo não pode ser vazio")
	private String codigo;

	@NotBlank(message = "Este campo não pode ser vazio")
	private String descricao;

	@Lob
	private String ocorrencia;

	@Lob
	@Column(name = "procedimento_filial")
	private String procedimentoFilial;

	@Lob
	@Column(name = "procedimento_producao")
	private String procedimentoProducao;

	@Lob
	@Column(name = "procedimento_desenvolvimento_comercial")
	private String procedimentoDesenvolvimentoComercial;

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

	public String getOcorrencia() {
		return ocorrencia;
	}

	public void setOcorrencia(String ocorrencia) {
		this.ocorrencia = ocorrencia;
	}

	public String getProcedimentoFilial() {
		return procedimentoFilial;
	}

	public void setProcedimentoFilial(String procedimentoFilial) {
		this.procedimentoFilial = procedimentoFilial;
	}

	public String getProcedimentoProducao() {
		return procedimentoProducao;
	}

	public void setProcedimentoProducao(String procedimentoProducao) {
		this.procedimentoProducao = procedimentoProducao;
	}

	public String getProcedimentoDesenvolvimentoComercial() {
		return procedimentoDesenvolvimentoComercial;
	}

	public void setProcedimentoDesenvolvimentoComercial(String procedimentoDesenvolvimentoComercial) {
		this.procedimentoDesenvolvimentoComercial = procedimentoDesenvolvimentoComercial;
	}

	public TipoDocumento getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Status other = (Status) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		return true;
	}

	@Override
	public int compareTo(Status s) {

		if (Integer.parseInt(this.codigo) < Integer.parseInt(s.codigo)) {
			return -1;
		}
		if (Integer.parseInt(this.codigo) > Integer.parseInt(s.codigo)) {
			return 1;
		}
		return 0;
	}

}

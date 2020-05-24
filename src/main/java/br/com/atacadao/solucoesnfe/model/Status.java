package br.com.atacadao.solucoesnfe.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.hibernate.validator.constraints.NotBlank;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(of = "codigo" )
@Entity
public class Status implements Serializable, Comparable<Status> {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank(message = "Este campo não pode ser vazio")
	private String codigo;

	@NotBlank(message = "Este campo não pode ser vazio")
	private String descricao;

	@Lob
	private String ocorrencia;

	@ElementCollection
	private List<Procedimento> procedimentos;

	@Enumerated(EnumType.ORDINAL)
	private TipoDocumento tipoDocumento;

	

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

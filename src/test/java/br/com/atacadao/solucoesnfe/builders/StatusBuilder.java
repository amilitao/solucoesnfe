package br.com.atacadao.solucoesnfe.builders;

import java.util.ArrayList;
import java.util.List;

import br.com.atacadao.solucoesnfe.model.Procedimento;
import br.com.atacadao.solucoesnfe.model.Status;
import br.com.atacadao.solucoesnfe.model.TipoDocumento;

public class StatusBuilder {

	private List<Status> listaDeStatus = new ArrayList<>();

	private StatusBuilder(Status status) {
		listaDeStatus.add(status);
	}

	public static StatusBuilder newStatus() {

		Status status = create("135", "descricao teste", "ocorrencia teste", new ArrayList<Procedimento>(),
				TipoDocumento.NFE);
		return new StatusBuilder(status);
	}

	private static Status create(String codigo, String descricao, String ocorrencia, List<Procedimento> procedimentos,
			TipoDocumento tipoDocumento) {

		Status status = new Status();
		status.setCodigo(codigo);
		status.setDescricao(descricao);
		status.setOcorrencia(ocorrencia);
		status.setProcedimentos(procedimentos);
		status.setTipoDocumento(tipoDocumento);

		return status;
	}

	public StatusBuilder mais(int quantidade) {

		Status base = listaDeStatus.get(0);

		for (int i = 0; i < quantidade; i++) {
			listaDeStatus.add(create("135", "descricao teste", "ocorrencia teste", new ArrayList<Procedimento>(),
					TipoDocumento.NFE));
		}
		return this;
	}

	public Status buildOne() {
		return listaDeStatus.get(0);
	}

	public List<Status> buildAll() {
		return listaDeStatus;
	}

}

programa {

  inclua biblioteca Arquivos --> arquivoPaciente
  inclua biblioteca Tipos --> tipo

  cadeia nomePaciente, opcao, horario, dataConsulta, nomeEspecialidade, feedback
  inteiro idadePaciente, especialidade, diaConsulta, opcaoTelediagnostico, confirmaAtendimento, formaPagamento, prontuario, opcaoCompra
  inteiro nota

  funcao inicio() {
    apresentacao()
    questionarioEspecialidade()
    agenda()
    chamadaDeVideo()
    vendaDispositivo()
    avaliacao()
  }

  funcao apresentacao() {
    escreva("Olá, Seja bem-vindo à Back Clinic \n")
    escreva("\n")
    escreva("Por favor, digite o nome do paciente: ")
    leia(nomePaciente)
    escreva("Digite a idade do paciente: ")
    leia(idadePaciente)
  }

  funcao questionarioEspecialidade() {
    escreva("\n")
    escreva("Escolha a especialidade médica: \n")
    escreva("1 - Médico Geral \n")
    escreva("2 - Pediatria \n")
    escreva("3 - Ginecologia \n")
    escreva("4 - Cardiologia \n")
    escreva("5 - Ortopedia \n")
    escreva("6 - Dermatologia \n")
    escreva("7 - Oftalmologia \n")
    escreva("8 - Urologia \n")
    escreva("9 - Endocrinologia \n")
    escreva("10 - Neurologia \n")
    escreva("Opção: ")
    leia(especialidade)
    verificarValidadeOpcao()
  }

  funcao verificarValidadeOpcao() {
    faca {
      escolha (especialidade) {
        caso 1:
          nomeEspecialidade = "Médico Geral"
          opcao = "valido"
          pare
        caso 2:
          nomeEspecialidade = "Pediatria"
          opcao = "valido"
          pare
        caso 3:
          nomeEspecialidade = "Ginecologia"
          opcao = "valido"
          pare
        caso 4:
          nomeEspecialidade = "Cardiologia"
          opcao = "valido"
          pare
        caso 5:
          nomeEspecialidade = "Ortopedia"
          opcao = "valido"
          pare
        caso 6:
          nomeEspecialidade = "Dermatologia"
          opcao = "valido"
          pare
        caso 7:
          nomeEspecialidade = "Oftalmologia"
          opcao = "valido"
          pare
        caso 8:
          nomeEspecialidade = "Urologia"
          opcao = "valido"
          pare
        caso 9:
          nomeEspecialidade = "Endocrinologia"
          opcao = "valido"
          pare
        caso 10:
          nomeEspecialidade = "Neurologia"
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
          opcao = "invalido"
          questionarioEspecialidade()
      }
    } enquanto (opcao == "invalido")
  }

  funcao agenda() {
    escreva("\nEscolha o dia da consulta: \n")
    escreva("1 - Segunda-feira \n")
    escreva("2 - Terça-feira \n")
    escreva("3 - Quarta-feira \n")
    escreva("4 - Quinta-feira \n")
    escreva("5 - Sexta-feira \n")
    escreva("Opção: ")
    leia(diaConsulta)
    verificarAgenda()
  }

  funcao verificarAgenda() {
    faca {
      escolha(diaConsulta) {
        caso 1:
          horario = "10:00 - 11:00"
          escreva("\nNa segunda-feira temos o horario de ",horario," disponível. \n")
          dataConsulta = "segunda-feira"
          opcao = "valido"
          pare
        caso 2:
          horario = "14:00 - 15:00"
          escreva("\nNa terça-feira temos o horario de ",horario," disponível. \n")
          dataConsulta = "terça-feira"
          opcao = "valido"
          pare
        caso 3:
          horario = "16:30 - 17:30"
          escreva("\nNa quarta-feira temos o horario de ",horario," disponível. \n")
          dataConsulta = "quarta-feira"
          opcao = "valido"
          pare
        caso 4:
          horario = "09:30 - 10:30"
          escreva("\nNa quinta-feira temos o horario de ",horario," disponível. \n")
          dataConsulta = "quinta-feira"
          opcao = "valido"
          pare
        caso 5:
          horario = "13:00 - 14:00"
          escreva("\nNa sexta-feira temos o horario de ",horario," disponível. \n")
          dataConsulta = "sexta-feira"
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
            opcao = "invalido"
            agenda()
      }
    } enquanto (opcao == "invalido")
  }

  funcao chamadaDeVideo() {
    escreva("\nNome do paciente: ", nomePaciente)
    escreva("\nIdade do paciente: ", idadePaciente)
    escreva("\nDia da consulta: ", dataConsulta)
    escreva("\nDeseja um telediagnóstico? Digite 1 para sim, e 2 para não: ")
    leia(opcaoTelediagnostico)
    verificarChamadaDeVideo()
  }

  funcao verificarChamadaDeVideo() {
    faca {
      escolha(opcaoTelediagnostico) {
        caso 1:
          escreva("\nVocê optou pelo telediagnóstico. Um médico entrará em contato com você em breve. \n")
          emitirArquivo()
          opcao = "valido"
          pare
        caso 2:
          escreva("\nVocê não optou pelo telediagnóstico. \n")
          escreva("Aguarde enquanto você é direcionado para a confirmação do atendimento presencial. \n")
          questionarioConfirmarAgenda()
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
            opcao = "invalido"
            chamadaDeVideo()
      }
    } enquanto (opcao == "invalido") 
  }

  funcao questionarioConfirmarAgenda() {
    escreva("\nDeseja confirmar o atendimento presencial? Digite 1 para sim, e 2 para não: ")
    leia(confirmaAtendimento)
    verificarConfirmarAgenda()
  }

  funcao verificarConfirmarAgenda() {
    faca {
      escolha (confirmaAtendimento) {
        caso 1:
          escreva("\nCartão de Confirmação de Consulta: \n")
          escreva("Nome do paciente: ", nomePaciente)
          escreva("\nEspecialidade: ", nomeEspecialidade)
          escreva("\nDia da consulta: ", dataConsulta)
          escreva("\nHorário: ", horario, "\n")
          pagarConsulta()
          verificarPagamentoConsulta()
          emitirArquivo()
          opcao = "valido"
          pare
        caso 2:
          escreva("\nO agendamento de sua consulta foi cancelado. \n")
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
            opcao = "invalido"
            questionarioConfirmarAgenda()
      }
    } enquanto (opcao == "invalido")
  }
  
  funcao pagarConsulta() {
    escreva("\nFormas de pagamento:\n")
    escreva("1 - Dinheiro \n")
    escreva("2 - Cartão de Crédito \n")
    escreva("3 - Cartão de Débito \n")
    escreva("4 - Plano de Saúde \n")
    escreva("Opção de pagamento: ")
    leia(formaPagamento)
  }

  funcao verificarPagamentoConsulta() {
    faca {
      escolha(formaPagamento) {
        caso 1:
          escreva("\nPagamento em dinheiro. \n")
          opcao = "valido"
          pare
        caso 2:
          escreva("\nPagamento com cartão de crédito. \n")
          opcao = "valido"
          pare
        caso 3:
          escreva("\nPagamento com cartão de débito. \n")
          opcao = "valido"
          pare
        caso 4:
          escreva("\nPagamento com plano de saúde.\n")
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
          opcao = "invalido"
          pagarConsulta()
      }
    } enquanto(opcao == "invalido")
    consultarProntuario()
  }

  funcao consultarProntuario() {
    se (nomeEspecialidade == "Médico Geral" ou nomeEspecialidade == "Cardiologia") {
	    escreva("\nVocê deseja acessar o prontuário eletrônico? Digite 1 para sim, e 2 para não: ")
	    leia(prontuario)
	    verificarConsultarProntuario()
    }
  }

  funcao verificarConsultarProntuario() { 
    faca {
      escolha (prontuario) {
        caso 1:
          escreva("\nProntuário Eletrônico de ", nomePaciente, ":")
          escreva("\n- Paciente apresenta histórico de hipertensão.")
          escreva("\n- Última consulta: ", 30 - diaConsulta, " dias atrás.")
          escreva("\n- Prescrição anterior: Atenolol 50mg.")
          escreva("\n- Alergias: Nenhuma registrada.")
          escreva("\n- Comentários: Paciente está se sentindo bem hoje. \n")
          opcao = "valido"
          pare
        caso 2:
          escreva("\nSua consulta ao prontuario foi cancelado. \n")
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
          opcao = "invalido"
          consultarProntuario()
      }
    } enquanto (opcao == "invalido")
  }

  funcao vendaDispositivo() {
    escreva("\nDeseja comprar um dispositivo de monitoramento de saúde? Digite 1 para sim, e 2 para não: ")
    leia(opcaoCompra)
    verificarVendaDispositivo()
  }

  funcao verificarVendaDispositivo() {
    faca {
      escolha(opcaoCompra) {
        caso 1:
          escreva("\nDispositivo de Monitoramento de Saúde adicionado ao carrinho.")
          escreva("\nTotal a pagar: R$ 150,00")
          escreva("\nObrigado pela compra!\n")
          opcao = "valido"
          pare
        caso 2:
          escreva("\nVocê optou por não comprar um dispositivo de monitoramento de saúde.\n")
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
          opcao = "invalido"
          vendaDispositivo()
      } 
    } enquanto (opcao == "invalido")
  }

  funcao emitirArquivo() {
  	cadeia caminho ="./dadosDoPaciente"
  	inteiro memoriaArmazenamento = arquivoPaciente.abrir_arquivo(caminho, arquivoPaciente.MODO_ESCRITA)
  	arquivoPaciente.escrever_linha("Nome do paciente: "+nomePaciente, memoriaArmazenamento)
  	arquivoPaciente.escrever_linha("Idade paciente: "+idadePaciente+" anos", memoriaArmazenamento)
  	arquivoPaciente.escrever_linha("Especialidade: "+nomeEspecialidade, memoriaArmazenamento)
  	arquivoPaciente.escrever_linha("Data da consulta: "+dataConsulta, memoriaArmazenamento)
  	arquivoPaciente.escrever_linha("Horario: "+horario, memoriaArmazenamento)
	arquivoPaciente.fechar_arquivo(memoriaArmazenamento)
	escreva("\nFicha do paciente gerada com sucesso.\n")
  }

  funcao avaliacao() {
  	escreva("\nObrigado por marcar a sua consulta com a Back Clinic.\n")
	escreva("A sua avaliação é muito importante para nós.\n")
	escreva("Em uma nota de 0 a 5, onde 0 é muito insatisfeito e 5 totalmente satisfeito. ")
	escreva("Qual nota você daria para a facilidade do nosso menu?\n")
	leia(nota)
	verificarAvaliacao() 	
  }

  funcao verificarAvaliacao() {
  	faca {
      escolha(nota) {
        caso 0:
          escreva("\nFico triste em saber que ficou totalmente insatisfeito, perdão.\n")
          opcao = "valido"
          pare
        caso 1:
          escreva("\nPoxa, iremos melhorar o nosso atendimento!\n")
          opcao = "valido"
          pare
        caso 2:
          escreva("\nQue pena que ocorreram problemas. Poderia nos dar um feedback?\n")
          leia(feedback)
          escreva("\nObrigado pelo feedback, estamos sempre aqui para lhe atender!\n")
          opcao = "valido"
          pare
        caso 3:
          escreva("\nObrigado pelo feedback, estamos sempre aqui para lhe atender!\n")
          opcao = "valido"
          pare
        caso 4:
          escreva("\nMuito obrigado pelo seu feedback, até mais!\n")
          opcao = "valido"
          pare
        caso 5:
          escreva("\nMuito obrigado pelo seu feedback, até mais!\n")
          opcao = "valido"
          pare
        caso contrario:
          escreva("\nOpção digitada é invalida. \n")
          opcao = "invalido"
          avaliacao()
      }  
    } enquanto (opcao == "invalido")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */

programa {

  funcao inicio() {

    cadeia nomePaciente, especialidade, feedback
    inteiro idadePaciente, confirmaAtendimento, nota1, diaConsulta, opcaoTelediagnostico, formaPagamento, prontuario
    cadeia horario
    logico opcao

    escreva("Olá, Seja bem-vindo à Back Clinic: \n")
    escreva("Por favor, digite o nome do paciente: ")
    leia(nomePaciente)

    escreva("Digite a idade do paciente: ")
    leia(idadePaciente)

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


    escreva("\n Escolha o dia da consulta: \n")
    escreva("1 - Segunda-feira \n")
    escreva("2 - Terça-feira \n")
    escreva("3 - Quarta-feira \n")
    escreva("4 - Quinta-feira \n")
    escreva("5 - Sexta-feira \n")
    escreva("Opção: ")
    leia(diaConsulta)

    escolha(diaConsulta) {
      caso 1:
        escreva("\n Na segunda-feira temos o horario de ",horario," disponível. \n")
        horario = "10:00 - 11:00"
      caso 2:
        escreva("\n Na terça-feira temos o horario de ",horario," disponível. \n")
        horario = "14:00 - 15:00"
      caso 3:
        escreva("\n Na quarta-feira temos o horario de ",horario," disponível. \n")
        horario = "16:30 - 17:30"
      caso 4:
        escreva("\n a quinta-feira temos o horario de ",horario," disponível. \n")
        horario = "09:30 - 10:30"
      caso 5:
        escreva("Na sexta-feira temos o horario de ",horario," disponível")
        horario = "13:00 - 14:00"
      caso contrario:
        escreva(horario)
        horario = "\n Opção inválida \n"
    }

    escreva("\nNome do paciente: ", nomePaciente)
    escreva("\nIdade do paciente: ", idadePaciente)
    escreva("\nDia da consulta: ", diaConsulta)

    escreva("\nDeseja um telediagnóstico? Digite 1 para sim, e 2 para não: ")
    leia(opcaoTelediagnostico)

    escolha(opcaoTelediagnostico) {
            caso 1:
                escreva("\n Você optou pelo telediagnóstico. Um médico entrará em contato com você em breve. \n")
            caso 2:
                escreva("Você não optou pelo telediagnóstico. \n")

                escreva("Deseja confirmar o atendimento? Digite 1 para sim, e 2 para não: ")
                leia(confirmaAtendimento)

                escolha(confirmaAtendimento) {
                    caso 1:
                        escreva("\tCartão de Confirmação de Consulta:\n")
                        escreva("\nNome do paciente: ", nomePaciente)
                        escreva("\nEspecialidade: ", especialidade)
                        escreva("\nDia da consulta: ", diaConsulta)
                        escreva("\nHorário: ", horario)

                        escreva("\nFormas de pagamento:\n")
                        escreva("1 - Dinheiro \n")
                        escreva("2 - Cartão de Crédito \n")
                        escreva("3 - Cartão de Débito \n")
                        escreva("4 - Plano de Saúde \n")
                        escreva("Opção de pagamento: ")
                        leia(formaPagamento)

                        escolha(formaPagamento) {
                            caso 1:
                                escreva("Pagamento em dinheiro. \n")
                            caso 2:
                                escreva("Pagamento com cartão de crédito. \n")
                            caso 3:
                                escreva("Pagamento com cartão de débito. \n")
                            caso 4:
                                escreva("Pagamento com plano de saúde.\n")
                            caso contrario:
                                escreva("Opção de pagamento inválida. \n")
                        }

                        escreva("\nVocê deseja acessar o prontuário eletrônico? Digite 1 para sim, e 2 para não: ")
                        leia(prontuario)

                        escolha(prontuario) {
                            caso 1:
                                escreva("\nProntuário Eletrônico de ", nomePaciente, ":")
                                escreva("\n- Paciente apresenta histórico de hipertensão.")
                                escreva("\n- Última consulta: ", diaConsulta - 30, " dias atrás.")
                                escreva("\n- Prescrição anterior: Atenolol 50mg.")
                                escreva("\n- Alergias: Nenhuma registrada.")
                                escreva("\n- Comentários: Paciente está se sentindo bem hoje.")
                            caso 2:
                                escreva("\n Você optou por não acessar o prontuário eletrônico. \n")
                            caso contrario:
                                escreva("Opção inválida.")
                        }

                        escreva("\n\nDeseja comprar um dispositivo de monitoramento de saúde? (s=1/n=2): ")
                        inteiro opcaoCompra
                        leia(opcaoCompra)

                        escolha(opcaoCompra) {
                            caso 1:
                                escreva("\nDispositivo de Monitoramento de Saúde adicionado ao carrinho.")
                                escreva("\nTotal a pagar: R$ 150,00")
                                escreva("\nObrigado pela compra!")
                            caso 2:
                                escreva("Você optou por não comprar um dispositivo de monitoramento de saúde.")
                            caso contrario:
                                escreva("Opção inválida.")
                        }
                    caso 2:
                        escreva("O atendimento foi cancelado.")
                    caso contrario:
                        escreva("Opção inválida.")
                }
            caso contrario:
                escreva("Opção inválida.")
        }

        cadeia nomeArquivo = nomePaciente + ".txt"
        arquivo pacienteArquivo = abrir_arquivo(nomeArquivo)
        escreva(pacienteArquivo, "Nome do paciente: ", nomePaciente, "\n")
        escreva(pacienteArquivo, "Idade do paciente: ", idadePaciente, "\n")
        escreva(pacienteArquivo, "Especialidade: ", especialidade, "\n")
        escreva(pacienteArquivo, "Dia da consulta: ", diaConsulta, "\n")
        escreva(pacienteArquivo, "Horário")
        escreva(pacienteArquivo, "Horário: ", horario, "\n")
        fechar_arquivo(pacienteArquivo)

        escreva("\nObrigado por marcar a sua consulta com a Back Clinic.\n")
        escreva("A sua avaliação é muito importante para nós.\n")
        escreva("Em uma nota de 0 a 5, onde 0 é muito insatisfeito e 5 totalmente satisfeito, qual nota você daria para a facilidade do nosso menu?\n")
        leia(nota1)

        escolha(nota1) {
            caso 0:
                escreva("Fico triste em saber que ficou totalmente insatisfeito, perdão.")
            caso 1:
                escreva("Poxa, iremos melhorar o nosso atendimento!")
            caso 2:
                escreva("Que pena que ocorreram problemas. Poderia nos dar um feedback?")
                leia(feedback)
            caso 3:
                escreva("Obrigado pelo feedback, estamos sempre aqui para lhe atender!")
            caso 4:
                escreva("Muito obrigado pelo seu feedback, até mais!")
            caso 5:
                escreva("Muito obrigado pelo seu feedback, até mais!")
            caso contrario:
                escreva("Opção inválida.")
        }
    }
}

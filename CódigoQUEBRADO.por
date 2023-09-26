
programa {

  funcao inicio() {

    cadeia nomePaciente, especialidade, feedback
    inteiro idadePaciente, confirmaAtendimento, nota1, diaConsulta, opcaoTelediagnostico, formaPagamento, prontuario
    cadeia horario
    logico opcao

    escreva("Ol�, Seja bem-vindo � Back Clinic: \n")
    escreva("Por favor, digite o nome do paciente: ")
    leia(nomePaciente)

    escreva("Digite a idade do paciente: ")
    leia(idadePaciente)

    escreva("Escolha a especialidade m�dica: \n")
    escreva("1 - M�dico Geral \n")
    escreva("2 - Pediatria \n")
    escreva("3 - Ginecologia \n")
    escreva("4 - Cardiologia \n")
    escreva("5 - Ortopedia \n")
    escreva("6 - Dermatologia \n")
    escreva("7 - Oftalmologia \n")
    escreva("8 - Urologia \n")
    escreva("9 - Endocrinologia \n")
    escreva("10 - Neurologia \n")
    escreva("Op��o: ")
    leia(especialidade)


    escreva("\n Escolha o dia da consulta: \n")
    escreva("1 - Segunda-feira \n")
    escreva("2 - Ter�a-feira \n")
    escreva("3 - Quarta-feira \n")
    escreva("4 - Quinta-feira \n")
    escreva("5 - Sexta-feira \n")
    escreva("Op��o: ")
    leia(diaConsulta)

    escolha(diaConsulta) {
      caso 1:
        escreva("\n Na segunda-feira temos o horario de ",horario," dispon�vel. \n")
        horario = "10:00 - 11:00"
      caso 2:
        escreva("\n Na ter�a-feira temos o horario de ",horario," dispon�vel. \n")
        horario = "14:00 - 15:00"
      caso 3:
        escreva("\n Na quarta-feira temos o horario de ",horario," dispon�vel. \n")
        horario = "16:30 - 17:30"
      caso 4:
        escreva("\n a quinta-feira temos o horario de ",horario," dispon�vel. \n")
        horario = "09:30 - 10:30"
      caso 5:
        escreva("Na sexta-feira temos o horario de ",horario," dispon�vel")
        horario = "13:00 - 14:00"
      caso contrario:
        escreva(horario)
        horario = "\n Op��o inv�lida \n"
    }

    escreva("\nNome do paciente: ", nomePaciente)
    escreva("\nIdade do paciente: ", idadePaciente)
    escreva("\nDia da consulta: ", diaConsulta)

    escreva("\nDeseja um telediagn�stico? Digite 1 para sim, e 2 para n�o: ")
    leia(opcaoTelediagnostico)

    escolha(opcaoTelediagnostico) {
            caso 1:
                escreva("\n Voc� optou pelo telediagn�stico. Um m�dico entrar� em contato com voc� em breve. \n")
            caso 2:
                escreva("Voc� n�o optou pelo telediagn�stico. \n")

                escreva("Deseja confirmar o atendimento? Digite 1 para sim, e 2 para n�o: ")
                leia(confirmaAtendimento)

                escolha(confirmaAtendimento) {
                    caso 1:
                        escreva("\tCart�o de Confirma��o de Consulta:\n")
                        escreva("\nNome do paciente: ", nomePaciente)
                        escreva("\nEspecialidade: ", especialidade)
                        escreva("\nDia da consulta: ", diaConsulta)
                        escreva("\nHor�rio: ", horario)

                        escreva("\nFormas de pagamento:\n")
                        escreva("1 - Dinheiro \n")
                        escreva("2 - Cart�o de Cr�dito \n")
                        escreva("3 - Cart�o de D�bito \n")
                        escreva("4 - Plano de Sa�de \n")
                        escreva("Op��o de pagamento: ")
                        leia(formaPagamento)

                        escolha(formaPagamento) {
                            caso 1:
                                escreva("Pagamento em dinheiro. \n")
                            caso 2:
                                escreva("Pagamento com cart�o de cr�dito. \n")
                            caso 3:
                                escreva("Pagamento com cart�o de d�bito. \n")
                            caso 4:
                                escreva("Pagamento com plano de sa�de.\n")
                            caso contrario:
                                escreva("Op��o de pagamento inv�lida. \n")
                        }

                        escreva("\nVoc� deseja acessar o prontu�rio eletr�nico? Digite 1 para sim, e 2 para n�o: ")
                        leia(prontuario)

                        escolha(prontuario) {
                            caso 1:
                                escreva("\nProntu�rio Eletr�nico de ", nomePaciente, ":")
                                escreva("\n- Paciente apresenta hist�rico de hipertens�o.")
                                escreva("\n- �ltima consulta: ", diaConsulta - 30, " dias atr�s.")
                                escreva("\n- Prescri��o anterior: Atenolol 50mg.")
                                escreva("\n- Alergias: Nenhuma registrada.")
                                escreva("\n- Coment�rios: Paciente est� se sentindo bem hoje.")
                            caso 2:
                                escreva("\n Voc� optou por n�o acessar o prontu�rio eletr�nico. \n")
                            caso contrario:
                                escreva("Op��o inv�lida.")
                        }

                        escreva("\n\nDeseja comprar um dispositivo de monitoramento de sa�de? (s=1/n=2): ")
                        inteiro opcaoCompra
                        leia(opcaoCompra)

                        escolha(opcaoCompra) {
                            caso 1:
                                escreva("\nDispositivo de Monitoramento de Sa�de adicionado ao carrinho.")
                                escreva("\nTotal a pagar: R$ 150,00")
                                escreva("\nObrigado pela compra!")
                            caso 2:
                                escreva("Voc� optou por n�o comprar um dispositivo de monitoramento de sa�de.")
                            caso contrario:
                                escreva("Op��o inv�lida.")
                        }
                    caso 2:
                        escreva("O atendimento foi cancelado.")
                    caso contrario:
                        escreva("Op��o inv�lida.")
                }
            caso contrario:
                escreva("Op��o inv�lida.")
        }

        cadeia nomeArquivo = nomePaciente + ".txt"
        arquivo pacienteArquivo = abrir_arquivo(nomeArquivo)
        escreva(pacienteArquivo, "Nome do paciente: ", nomePaciente, "\n")
        escreva(pacienteArquivo, "Idade do paciente: ", idadePaciente, "\n")
        escreva(pacienteArquivo, "Especialidade: ", especialidade, "\n")
        escreva(pacienteArquivo, "Dia da consulta: ", diaConsulta, "\n")
        escreva(pacienteArquivo, "Hor�rio")
        escreva(pacienteArquivo, "Hor�rio: ", horario, "\n")
        fechar_arquivo(pacienteArquivo)

        escreva("\nObrigado por marcar a sua consulta com a Back Clinic.\n")
        escreva("A sua avalia��o � muito importante para n�s.\n")
        escreva("Em uma nota de 0 a 5, onde 0 � muito insatisfeito e 5 totalmente satisfeito, qual nota voc� daria para a facilidade do nosso menu?\n")
        leia(nota1)

        escolha(nota1) {
            caso 0:
                escreva("Fico triste em saber que ficou totalmente insatisfeito, perd�o.")
            caso 1:
                escreva("Poxa, iremos melhorar o nosso atendimento!")
            caso 2:
                escreva("Que pena que ocorreram problemas. Poderia nos dar um feedback?")
                leia(feedback)
            caso 3:
                escreva("Obrigado pelo feedback, estamos sempre aqui para lhe atender!")
            caso 4:
                escreva("Muito obrigado pelo seu feedback, at� mais!")
            caso 5:
                escreva("Muito obrigado pelo seu feedback, at� mais!")
            caso contrario:
                escreva("Op��o inv�lida.")
        }
    }
}

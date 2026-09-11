programa
{
    funcao inicio()
    {
        cadeia nome[100]
        inteiro idade[100]
        real peso[100], altura[100], imc[100]
        inteiro quantidade = 0
        inteiro opcao
        real resultado

        faca
        {
            escreva("\n===== ACADEMIA =====\n")
            escreva("1 - Cadastrar aluno\n")
            escreva("2 - Listar alunos\n")
            escreva("3 - Calcular IMC\n")
            escreva("4 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    se (quantidade < 100)
                    {
                        escreva("\nNome do aluno: ")
                        leia(nome[quantidade])

                        escreva("Idade: ")
                        leia(idade[quantidade])

                        escreva("Peso (kg): ")
                        leia(peso[quantidade])

                        escreva("Altura (m): ")
                        leia(altura[quantidade])

                        imc[quantidade] = peso[quantidade] / (altura[quantidade] * altura[quantidade])

                        quantidade++

                        escreva("\nAluno cadastrado com sucesso!\n")
                    }
                    senao
                    {
                        escreva("\nLimite de alunos atingido!\n")
                    }
                    pare

                caso 2:
                    escreva("\n===== ALUNOS CADASTRADOS =====\n")

                    se (quantidade == 0)
                    {
                        escreva("Nenhum aluno cadastrado.\n")
                    }
                    senao
                    {
                        para (inteiro i = 0; i < quantidade; i++)
                        {
                            escreva("\nAluno ", i + 1, ":\n")
                            escreva("Nome: ", nome[i], "\n")
                            escreva("Idade: ", idade[i], " anos\n")
                            escreva("Peso: ", peso[i], " kg\n")
                            escreva("Altura: ", altura[i], " m\n")
                            escreva("IMC: ", imc[i], "\n")
                        }
                    }
                    pare

                caso 3:
                    se (quantidade == 0)
                    {
                        escreva("\nNenhum aluno cadastrado.\n")
                    }
                    senao
                    {
                        escreva("\nDigite o número do aluno (1 até ", quantidade, "): ")
                        inteiro numero
                        leia(numero)

                        se (numero >= 1 e numero <= quantidade)
                        {
                            resultado = imc[numero - 1]

                            escreva("\nAluno: ", nome[numero - 1], "\n")
                            escreva("IMC: ", resultado, "\n")

                            se (resultado < 18.5)
                            {
                                escreva("Classificação: Abaixo do peso\n")
                            }
                            senao se (resultado < 25)
                            {
                                escreva("Classificação: Peso normal\n")
                            }
                            senao se (resultado < 30)
                            {
                                escreva("Classificação: Sobrepeso\n")
                            }
                            senao
                            {
                                escreva("Classificação: Obesidade\n")
                            }
                        }
                        senao
                        {
                            escreva("\nNúmero de aluno inválido!\n")
                        }
                    }
                    pare

                caso 4:
                    escreva("\nPrograma encerrado. Até logo!\n")
                    pare

                caso contrario:
                    escreva("\nOpção inválida!\n")
                    caso 4:
    se (quantidade == 0)
    {
        escreva("\nNenhum aluno cadastrado.\n")
    }
    senao
    {
        inteiro numero

        escreva("\n===== CONSULTA DE MENSALIDADE =====\n")
        escreva("Digite o número do aluno: ")
        leia(numero)

        se (numero >= 1 e numero <= quantidade)
        {
            escreva("\nAluno: ", nome[numero - 1], "\n")

            se (mensalidade[numero - 1] == "sim")
            {
                escreva("Status: MENSALIDADE PAGA\n")
            }
            senao
            {
                escreva("Status: MENSALIDADE PENDENTE\n")
            }
        }
        senao
        {
            escreva("\nNúmero de aluno inválido!\n")
        }
    }
    pare

            }

        } enquanto (opcao != 4)
    }
}


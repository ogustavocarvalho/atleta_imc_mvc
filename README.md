# Calculadora de IMC - iOS (Swift + MVC)

Aplicativo iOS desenvolvido em Swift utilizando o padrão arquitetural **MVC (Model-View-Controller)**.  
O app permite calcular o Índice de Massa Corporal (IMC) a partir dos dados inseridos pelo usuário.

---

## Funcionalidades

- Inserção do nome do atleta
- Entrada de peso e altura
- Cálculo automático do IMC
- Exibição do resultado formatado na tela

---

## Arquitetura

O projeto segue o padrão **MVC**:

### Model
Responsável pela lógica de negócio:
- Classe `Atleta`
- Cálculo do IMC

### View
Responsável pela interface:
- Storyboard
- TextFields (nome, peso, altura)
- Botão de cálculo
- Label de resultado

### Controller
Responsável pela interação:
- `ViewController`
- Captura os dados da interface
- Chama o Model para calcular
- Atualiza a View com o resultado

---

## Tecnologias utilizadas

- Swift
- UIKit
- Storyboard
- Xcode
- Arquitetura MVC

---

## Interface

> (Aqui você pode adicionar prints do app rodando)

Exemplo:
- Tela de entrada de dados
- Resultado do cálculo

---

## Como rodar o projeto

1. Clone o repositório:

```bash
git clone https://github.com/ogustavocarvalho/atleta_imc_mvc.git

# Desafio_VR_QA

Este repositorio possui teste automatizado de uma api que consulta os dados do endereco atraves do numero do cep

## Pré-requisitos
- Ruby
- Git
- Gem Bundler
- Cucumber

### Tags do Cucumber
Foram utilizadas tags para a execucao de cenarios especificos:
|```@buscar_dados_cep```| Executa todos os cenarios               |
|```@cep_valido```      | Executa o cenario com os CEPs validos   |
|```@cep_invalido```    | Executa o cenario com os CEPs invalidos |

### Exemplo de Execução
Os cenarios podem ser executados da seguinte forma:

`cucumber -t "@tag_desejada`

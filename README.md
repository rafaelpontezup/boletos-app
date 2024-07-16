# Super App - Boletos
Microsserviço responsável por expor API REST de geração de boletos. Esta API será consumida por nossos clientes através da nossa aplicação mobile, a Super App.

Para isso, este microsserviço se integra a API pública do Bankly para geração automática e rastreável de boletos.

Para mais informações:
 1. [Documentos da Bankly](https://docs.bankly.com.br/reference/bem-vindo-ao-bankly)
 2. Dev Guide (v2)
    - [Documentos da Bankly > Dev Guide > Emissão de boleto](https://docs.bankly.com.br/v2/docs/emissao-de-boleto)
    - [Documentos da Bankly > Dev Guide > Query by authenticationCode](https://docs.bankly.com.br/v2/docs/consulta-boleto-por-authenticationcode)
    - [Documentos da Bankly > Dev Guide > Impressão do boleto](https://docs.bankly.com.br/v2/docs/impressao-de-boleto)
3. API (v2)
    - [Documentos da Bankly > API > OpenAPI](https://github.com/acesso-bankly/open-api/tree/main/apis/v2)
    - [Documentos da Bankly > API > OpenAPI > boletos](https://github.com/acesso-bankly/open-api/tree/main/apis/v2/boletos)

## Stack e tecnologias

Microsserviço construído via StackSpot EDP que utiliza as seguintes tecnologias:

- Java 11
- Spring Boot 2.7.2
- Spring Boot Testing
- Spring Actuator
- Open Feign
- AWS DynamoDB
- AWS DynamoDB Local
- jUnit
- Mockito

## Suporte e dúvidas

Para maiores informações e suporte, envie email para rafael.ponte@zup.com.br.


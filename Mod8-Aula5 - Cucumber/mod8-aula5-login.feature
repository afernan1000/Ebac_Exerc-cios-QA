            #Language: pt

            Funcionalidade: Tela de login
            COMO aluno do portal EBAC
            QUERO me autenticar
            PARA visualizar meus cursos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "andre@ebac.com.br"
            E a senha "senha@123"
            Então deve ser exibida a mensagem de boas vindas: "Olá André"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "andreee@ebac.com.br"
            E a senha "senha@123"
            Então deve ser exibida a mensagem de alerta: "Usuário Inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "andre@ebac.com.br"
            E a senha "senha@12333"
            Então deve ser exibida a mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticação por multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser exibida a <mensagem>

            Exemplos:
            | usuario               | senha         | mensagem                     |
            | "andre@ebac.com.br"   | "senha@123"   | "Olá André"                  |
            | "andreee@ebac.com.br" | "senha@123"   | "Usuário Inexistente"        |
            | "andre@ebac.com.br"   | "senha@12333" | "Usuário ou senha inválidos" |
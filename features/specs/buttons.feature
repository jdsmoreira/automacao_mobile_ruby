#language: pt

Funcionalidade: Buttons

    @shor
    Cenário: Clique Simples

        Dado que acesso a tela Click Simples
        Quando faço um click Simples
        Então devo ver o texto: "Isso é um clique simples"

    @long
    Cenário: Click Longo

        Dado que acesso a tela Click Longo
        Quando faço um click longooo
        Então devo ver o botão com o texto: "CLIQUE LONGO OK"
*** Settings ***
Documentation    Utilização de LOOPS no Robot Framework

*** Variables ***
# Indice da lista      1      2      3      4      5
@{LISTA_DE_ALGO}       A      B      C      D      E

*** Test Cases ***

Teste de Repeat keyword
        [Documentation]    Repeat Keyword executa a mesma keyword várias vezes
    Utilizando Repeat keyword
Teste de FOR tipo IN Range
        [Documentation]    Faz um loop dentro de um intervalo, se você colocar de 0 a 10, ele vai do 0 até o 9, pois é um intervalo
    FOR do tipo IN Range  
Teste de FOR tipo IN
        [Documentation]    Percorrer cada item da lista
    FOR do tito IN
Teste de FOR tipo IN ENUMERATE
        [Documentation]  Percorrer cada item da lista e percorre o indice da lista
    IN ENUMERATE

Teste de Sair do FOR
        [Documentation]    Contola o FOR quando deve encerrar antes de terminar os LOOPS  
    Sair do FOR
*** Keywords ***

Utilizando Repeat keyword
    Log To Console    ${\n}
    Repeat Keyword  4x     Log to Console     Frase Repetida
    Log To Console    ${\n}

FOR do tipo IN Range
    Log To Console    ${\n}
    FOR               ${CONTADOR}                   IN RANGE    1    6    
    Log To Console    Posição:${CONTADOR}
    Log               Posição:${CONTADOR}
    END
    Log To Console    O contador repetiu ${CONTADOR} vezes

FOR do tito IN
    Log To Console    ${\n}
    FOR    ${ALGO}  IN  @{LISTA_DE_ALGO}
        Log To Console  Algo é: ${ALGO}
        No Operation
    END

IN ENUMERATE
    Log To Console    ${\n}
    FOR   ${INDICE}  ${ALGO}  IN ENUMERATE  @{LISTA_DE_ALGO}
        Log To Console  Algo é:${INDICE} --> ${ALGO}
        No Operation
    END

Sair do FOR
    Log To Console    ${\n}
    FOR   ${INDICE}  ${ALGO}  IN ENUMERATE  @{LISTA_DE_ALGO}
        Log To Console  Algo é:${INDICE} --> ${ALGO}
        Exit For loop If    '${ALGO}'=='C'
    END

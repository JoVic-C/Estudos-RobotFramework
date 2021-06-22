*** Settings ***
Documentation    Documentação da API: http://.... .
Library          RequestsLibrary
Library          Collections

*** Variables ***


*** Test Cases ***
Buscar a listagem de todos os livros (GET em todos os livros)
    Conferir se retorna uma lista com 200 livros
*** Keywords ***
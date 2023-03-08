*** Settings ***
Documentation    Executer un test automatisé sur un site web
Library    SeleniumLibrary
Suite Setup    Log To Console    Debut du test
Suite Teardown    Log To Console    Fin du test

*** Variables ***
${URL}    https://canlepi.github.io/Localisateurs-Web/
${Browser}    chrome

*** Test Cases ***
TestCase1
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    3
    Execute Javascript    window.scrollTo(0,1200)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    3
    Click Element    xpath://section[@id="debut"]/div/header/div/i
    Sleep    3
    Click Element    xpath://nav[@id='nav']/a[4]
    Sleep    3
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    Close Browser
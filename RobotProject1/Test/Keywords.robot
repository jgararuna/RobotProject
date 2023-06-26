*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
LoginKW
    Input Text                       name=username    @{CREDENTIALS}[0]
    Input Password                   name=password    &{LOGINDATA}[password]
    Click Button                     xpath=//button[.//text() = ' Login ']
    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

@{CREDENTIALS}    Admin    admin123

&{LOGINDATA}    username=Admin    password=admin123
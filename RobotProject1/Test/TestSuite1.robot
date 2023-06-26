*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite TearDown

Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test TearDown

Default Tags    sanity


*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...
    
MySecondTest
    [Tags]    example
    Log    I am inside second test
    Set Tags    regression1
    Remove Tags     regression1
    
MyThirdTest
    Log    I am inside third test
    
MyFourthTest
    Log    I am inside fourth test
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q   Automation
    # Press Keys    name=q    ENTER
    # #Click Button    name=btnK    
    # Sleep    2
    # Close Browser
    # Log    Test Completed    
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser                     ${URL}    chrome
    # #Set Browser Implicit Wait        5    
    # Wait Until Element Is Visible    name=username    
    # # Input Text                       name=username    @{CREDENTIALS}[0]
    # # Input Password                   name=password    &{LOGINDATA}[password]
    # # Click Button                     xpath=//button[.//text() = ' Login ']
    # LoginKW
    # Wait Until Element Is Visible    xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/p
    # Click Element                    xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/p  
    # Wait Until Element Is Visible    link=Logout   
    # Click Element                    link=Logout
    # Close Browser
    # Log                              Test completed
    # Log                              This test was executed by %{username} on %{os}
    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

@{CREDENTIALS}    Admin    admin123

&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text                       name=username    @{CREDENTIALS}[0]
    Input Password                   name=password    &{LOGINDATA}[password]
    Click Button                     xpath=//button[.//text() = ' Login ']
    
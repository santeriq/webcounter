*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When setting value it should set the value
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
    Input Text  value  1
    Click Button  aseta
    Page Should Contain  nappia painettu 1 kertaa

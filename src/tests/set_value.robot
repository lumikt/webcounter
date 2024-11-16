*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When the value is set to 10 it is 10
    Go To    ${HOME_URL}
    Input Text    value    10
    Click Button    aseta
    Page Should Contain    nappia painettu 10 kertaa
    
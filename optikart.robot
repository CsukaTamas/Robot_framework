*** Settings ***
Library           Selenium2Library

*** Test Cases ***
valid_login
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    TamasCs
    Input Password    //*[@id="user_password-5474"]    Tamas1234
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Csuka Tamás
    Close Browser

login_with_empty_username
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    Tamas1234
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Please enter your username or email
    Close Browser

login_with_empty_password
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    TamasCs
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Please enter your password
    Close Browser

login_with_empty_credentials
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Please enter your username or email
    Page Should Contain    Please enter your password
    Close Browser

login_with_wrong_username
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    turostesztaxd
    Input Password    //*[@id="user_password-5474"]    Tamas1234
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Password is incorrect. Please try again.
    Close Browser

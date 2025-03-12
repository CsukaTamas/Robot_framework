*** Settings ***
Library           Selenium2Library

*** Test Cases ***
register
    Open Browser    https://www.mikrosat.hu    firefox
    Click Button    //*[@id="profile__btn"]
    Click Link    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Text    //*[@id="emai"]    csuka.tamas.jozsef@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    BestP2ss
    Input Password    //*[@id="passwd2"]    BestP2ss
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    301234567
    Input Text    //*[@id="default_nev"]    Csuka Tamás
    Input Text    //*[@id="default_irany"]    6100
    Input Text    //*[@id="default_varos"]    Kiskunfélegyháza
    Input Text    //*[@id="default_utca"]    Kossuth Lajos utca 24.
    Set Focus To Element    //*[@id="button_reg"]
    Click Button    //*[@id="button_reg"]

login
    Open Browser    https://www.mikrosat.hu    firefox
    Click Button    //*[@id="profile__btn"]
    Input Text    //*[@id="shop_user_login"]    csuka.tamas.jozsef@diak.szbi-pg.hu
    Input Password    //*[@id="shop_pass_login"]    BestP2ss
    Click Button    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button

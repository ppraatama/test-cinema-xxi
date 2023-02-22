*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${loginpage_split_screen}                       css=.bt-split-screen
${loginpage_header}                             css=.bt-split-screen__header
${loginpage_field_email}                        css=input#email
${loginpage_button_selanjutnya}                 css=button#next
${loginpage_button_login_with_facebook}         css=.bt-social-group > button:nth-of-type(1)
${loginpage_button_login_with_google}           css=.bt-social-group > button:nth-of-type(2)
${loginpage_button_login_with_apple}            css=.bt-social-group > button:nth-of-type(3)
${loginpage_link_text_daftar}                   link=Daftar
${loginpage_account_card_body}                  css=.ant-card-body
${loginpage_button_close}                       css=.ant-btn-icon-only
${loginpage_field_password}                     css=input#password
${loginpage_link_text_tampilkan}                css=.bt-btn-toggle__password
${loginpage_link_text_lupa_password}            link=Lupa Password?
${loginpage_button_masuk}                       css=.ant-btn-primary

*** Keywords ***
Login with valid credentials
    [Arguments]  ${EMAIL}   ${PASSWORD}
    wait until element is visible               ${loginpage_field_email}
    click element                               ${loginpage_field_email}
    input text                                  ${loginpage_field_email}        ${EMAIL}
    click element                               ${loginpage_button_selanjutnya}
    wait until element is visible               ${loginpage_field_password}
    element should be visible                   ${loginpage_account_card_body}
    click element                               ${loginpage_field_password}
    input text                                  ${loginpage_field_password}     ${PASSWORD}
    click element                               ${loginpage_button_masuk}

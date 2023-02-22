*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${homepage_button_hamburger_menu}                   css=.css-h7owb7
${homepage_bhinneka_logo}                           xpath=div a[rel='noopener'] > img[alt='Bhinneka.com']
${homepage_search_product}                          css=input#searchProduct
${homepage_button_search}                           css=.css-z5vj87
${homepage_button_login}                            css=.css-1n963ky > .css-1avegbk.menu-dekstop
${homepage_button_cart}                             css=.css-1n963ky > a:nth-of-type(2)
${homepage_link_text_bhinneka_bisnis}               css=.css-1dp5w0q ul > li:nth-of-type(1) > a
${homepage_link_text_bonus_spesial}                 css=.css-1dp5w0q ul > li:nth-of-type(2) > a
${homepage_link_text_rumah_merchant}                css=.css-1dp5w0q ul > li:nth-of-type(3) > a
${homepage_body}                                    css=.css-svghbb.e5zop7x0
${homepage_button_live_chat}                        css=.bt-chat .bt-chat__button:nth-of-type(2)
${homepage_merchant_menu}                           css=.bt-menu-merchant.menu-dekstop
${homepage_user_menu}                               css=.css-mmq9kd
${homepage_user_akun_saya}                          css=.css-ucl57q [class='css-327a6u']:nth-of-type(1)
${homepage_user_daftar_belanja}                     css=.css-ucl57q [class='css-327a6u']:nth-of-type(2)
${homepage_user_logout}                             css=.css-ucl57q [class='css-327a6u']:nth-of-type(4)
${homepage_category_Tech}                           css=[href='\/category-technology-and-communication']
${homepage_category_subcategory}                    css=[class='css-9ttowb'] [href='\/jual-laptop-notebook\/y81WyE6']
${homepage_sidebar_category}                        css=[class='css-1e4fvq e1uu5jkk4'] [class='collapse-wrapper css-4i7nq1']:nth-of-type(2) .e1uu5jkk11:nth-of-type(1) [type]
${homepage_produce_title}                           css=css-194yrqz

*** Keywords ***
Go To Login Page
    wait until element is visible                   ${homepage_button_login}
    click element                                   ${homepage_button_login}

Select Category
    wait until element is visible                   ${homepage_button_hamburger_menu}
    mouse over                                      ${homepage_button_hamburger_menu}
#    sleep                                           3
    wait until element is visible                   ${homepage_category_Tech}
#    sleep                                           3
    mouse over                                      ${homepage_category_Tech}
    click element                                   ${homepage_category_subcategory}

Verify filter results
    wait until element is visible                   ${homepage_sidebar_category}
    click element                                   ${homepage_sidebar_category}
    element should contain                          ${homepage_produce_title}   ASUS


*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${cart_button_plus}             css=.css-obl4w6
${cart_list_product}            css=.css-1w2dyhq.e1f2s7v90
${cart_quantity_product}        css=input[name='quantity']
${cart_total_product}           css=.css-y490my h4

*** Keywords ***
Manipulate Summary of Product
    wait until element is visible           ${cart_list_product}
    click element                           ${cart_button_plus}
    ${QUANTITY_PRODUCT}     get text        ${cart_quantity_product}
    log to console                          ${QUANTITY_PRODUCT}
    ${TOTAL}                get text        ${cart_total_product}
    log to console                          ${TOTAL}
    element should contain                  ${cart_quantity_product}    ${QUANTITY_PRODUCT}
    element should contain                  ${cart_total_product}       ${TOTAL}
    capture element screenshot              ${cart_quantity_product}
*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${searchpage_field_product}                 css=input#searchProduct
${searchpage_button_search}                 css=.css-z5vj87
${searchpage_dropdown_product}              css=.css-yhj6ev div:nth-of-type(2) [class='product-wrapper css-1klfjxu']
${searchpage_popupbox_notifications}        css=#onesignal-slidedown-dialog
${searchpage_button_block}                  css=#onesignal-slidedown-cancel-button

*** Keywords ***
Search Product
    [Arguments]  ${KEYWORD}
    wait until element is visible           ${searchpage_popupbox_notifications}
    click element                           ${searchpage_button_block}
    wait until element is visible           ${searchpage_field_product}
    click element                           ${searchpage_field_product}
    input text                              ${searchpage_field_product}     ${KEYWORD}
    wait until element is visible           ${searchpage_dropdown_product}
    click element                           ${searchpage_dropdown_product}

Close Popup Box Notifications
    Wait until element is visible           ${searchpage_popupbox_notifications}
    click element                           ${searchpage_button_block}
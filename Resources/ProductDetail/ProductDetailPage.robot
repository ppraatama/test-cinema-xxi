*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${productdetailpage_image_product}                  css=.css-j1fwo.enfpb2q18
${productdetailpage_title_product}                  css=.css-oe1jvc h1
${productdetailpage_id_product}                     css=.css-mldmfa span
${productdetailpage_rating_product}                 css=[class='css-83ykb7 e4zbd2v0']
${productdetailpage_field_harga_product}            css=.css-oe1jvc [class='css-1ksog4 enfpb2q13']:nth-child(4)
${productdetailpage_field_cicilan_product}          css=.css-oe1jvc [class='css-19cps6k enfpb2q13']:nth-child(5)
${productdetailpage_field_estimasi_product}         css=.css-oe1jvc [class='css-19cps6k enfpb2q13']:nth-child(6)
${productdetailpafe_field_size_product}             css=.css-oe1jvc [class='css-19cps6k enfpb2q13']:nth-child(7)
${productdetailpage_field_color_product}            css=.css-oe1jvc [class='css-19cps6k enfpb2q13']:nth-child(8)
${productdetailpage_field_jumlah_product}           css=.css-oe1jvc [class='css-19cps6k enfpb2q13']:nth-child(9)
${productdetailpage_field_informasi_toko}           css=[class='bt-merchant-info css-19cps6k enfpb2q13']
${productdetailpage_field_garansi_product}          css=.css-oe1jvc [class='css-1ksog4 enfpb2q13']:nth-child(12)
${productdetailpage_button_hubungi_kami}            css=.css-ta8cau
${productdetailpage_button_beli}                    css=.css-1pvpeap
${productdetailpage_button_tambah_ke_keranjang}     css=.css-1t6w53m
${productdetailpage_quantity_product}               css=div[name='quantity'] > .css-18z11p
${productdetailpage_button_minus_quantity_product}  css=.css-pztfsd [class] .css-z5vj87:nth-of-type(1)
${productdetailpage_button_plus_quantity_product}   css=.css-pztfsd [class] .css-z5vj87:nth-child(3)
${productdetailpage_button_input_quantity_product}  css=.css-pztfsd .css-isybvm input
${producedetailpage_total_product}                  css=.css-hqqzd7 span
${productdetailpage_popup_produk}                   css=.css-1yt4s5m
${productdetailpage_button_lanjut_keranjang}        css=.css-1yt4s5m  .css-9vi8jg

*** Keywords ***
Verify Product Detail
    wait until element is visible                   ${productdetailpage_image_product}
    element should be visible                       ${productdetailpage_image_product}
    element should be visible                       ${productdetailpage_title_product}
    element should be visible                       ${productdetailpage_id_product}
    element should be visible                       ${productdetailpage_rating_product}
    element should be visible                       ${productdetailpage_field_harga_product}
    element should be visible                       ${productdetailpage_field_cicilan_product}
    element should be visible                       ${productdetailpage_field_estimasi_product}
    element should be visible                       ${productdetailpafe_field_size_product}
    element should be visible                       ${productdetailpage_field_color_product}
    element should be visible                       ${productdetailpage_field_jumlah_product}

Manipulate summary of product
    click element                                   ${productdetailpage_button_input_quantity_product}
    click element                                   ${productdetailpage_button_plus_quantity_product}
    ${QUANTITY_PRODUCT}    get text                 ${productdetailpage_button_input_quantity_product}
    log to console                                  ${QUANTITY_PRODUCT}
    sleep                                           2
    ${TOTAL}                get text                ${producedetailpage_total_product}
    log to console                                  ${TOTAL}
    element text should be                          ${productdetailpage_button_input_quantity_product}      ${QUANTITY_PRODUCT}
    element should contain                          ${producedetailpage_total_product}                      ${TOTAL}
    capture element screenshot                      ${productdetailpage_button_input_quantity_product}

Click "Tambah ke Keranjang"
    wait until element is visible                   ${productdetailpage_button_tambah_ke_keranjang}
    click element                                   ${productdetailpage_button_tambah_ke_keranjang}
    wait until element is visible                   ${productdetailpage_popup_produk}
    click element                                   ${productdetailpage_button_lanjut_keranjang}

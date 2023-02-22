*** Settings ***
Resource                        ../../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                          ${HOST}
${KEYWORD}                      xiaomi

*** Test Cases ***
Manipulasi Jumlah Produk
    [Documentation]  Manipulasi jumlah produk pada halaman produk detail
    [Tags]  Regression  Smoke

    Homepage.Go To Login Page
    LoginPage.Login with valid credentials      ${ACCOUNT_BHINNEKA1_EMAIL}  ${ACCOUNT_BHINNEKA1_PASSWORD}
    SearchPage.SearchProduct                    ${KEYWORD}
    ProductDetailPage.Verify Product Detail
    ProductDetailPage.Manipulate summary of product

Manipulasi Jumlah Produk(Tambah Ke Keranjang)
    [Documentation]    Manipulasi jumlah produk pada halaman keranjang
    [Tags]  Regression  Smoke

    Homepage.Go To Login Page
    LoginPage.Login with valid credentials      ${ACCOUNT_BHINNEKA1_EMAIL}  ${ACCOUNT_BHINNEKA1_PASSWORD}
    SearchPage.SearchProduct                    ${KEYWORD}
    ProductDetailPage.Verify Product Detail
    ProductDetailPage.Click "Tambah ke Keranjang"
    CartPage.Manipulate Summary of Product

Manipulasi Filter
    [Documentation]  Manipulasi filter pada daftar produk
    [Tags]  Regression  Smoke

    Homepage.Go To Login Page
    LoginPage.Login with valid credentials      ${ACCOUNT_BHINNEKA1_EMAIL}  ${ACCOUNT_BHINNEKA1_PASSWORD}
    SearchPage.Close Popup Box Notifications
    Homepage.Select Category
    Homepage.Verify filter results
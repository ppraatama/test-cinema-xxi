*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             String

Resource            Config.robot

Resource            ../Resources/Common/Browser.robot
Resource            ../Resources/Common/CommonKeywords.robot
Resource            ../Resources/Data/Accounts.robot
Resource            ../Resources/Homepage/Homepage.robot
Resource            ../Resources/Login/LoginPage.robot
Resource            ../Resources/Search/SearchPage.robot
Resource            ../Resources/ProductDetail/ProductDetailPage.robot
Resource            ../Resources/Cart/CartPage.robot
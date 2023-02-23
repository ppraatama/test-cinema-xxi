*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${listCityPlayingInPage}                            xpath=//div[@class='main-content']
${footerPlayingInPage}                              xpath=//div[@class='footer']
${cityPlayingInPage}                                xpath=//li/div[.='YOGYAKARTA']
${cinemaXxiPlayingInPage}                           xpath=//div[@id='link_all']
${premierePlayingInPage}                            xpath=//div[@id='link_prem']
${imaxPlayingInPage}                                xpath=//div[@id='link_imax']
${listCinemaPlayingInPage}                          xpath=//div[@class='nav_theater_content']
${cinemaPlayingInPage}                              xpath=//div[@id='ini']/div[@class='all']/li[1]/div[@id='id']
${titleCinemaPlayingInPage}                         xpath=//section/div[@class='main-content']/div[2]/h4[1]

*** Keywords ***
Choose city
    wait until element is visible                   ${listCityPlayingInPage}
    execute javascript                              window.scrollTo(0, 300);
    execute javascript                              window.scrollTo(0, 600);
    execute javascript                              window.scrollTo(0, 1000);
    execute javascript                              window.scrollTo(0, 1200);
    execute javascript                              window.scrollTo(0, 1500);
    click element                                   ${cityPlayingInPage}

Choose cinema
    wait until element is visible                   ${listCityPlayingInPage}
    click element                                   ${cinemaXxiPlayingInPage}
    wait until element is visible                   ${listCinemaPlayingInPage}
    click element                                   ${cinemaPlayingInPage}

Verify movies
    wait until element is visible                   ${listCityPlayingInPage}
    element should be visible                       ${titleCinemaPlayingInPage}
    execute javascript                              window.scrollTo(0, 300);
    execute javascript                              window.scrollTo(0, 600);
    execute javascript                              window.scrollTo(0, 1000);
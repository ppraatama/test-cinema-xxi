*** Settings ***
Resource                        ../../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                          ${HOST}

*** Test Cases ***
Verify user can play trailer movie
    [Documentation]  Verifikasi user dapat play trailer
    [Tags]  Positive

    Homepage.User input URL
    movieDetailPage.Verify trailer can play

Verify user can see movie now playing
    [Documentation]    Verifikasi user dapat melihat movie yang sedang bermain
    [Tags]    Positive

    Homepage.User click playing in menu
    playingInPage.Choose city
    playingInPage.Choose cinema
    playingInPage.Verify movies

Verify user can see trailer in upcoming
    [Documentation]    Verifikasi user dapat melihat trailer uanng coming soon
    [Tags]      Positive

    Homepage.User click up coming menu
    upComingPage.Choose movie
    upComingPage.Verify trailer from upcoming can play
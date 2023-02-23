*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${mainContentMovieDetailPage}                       xpath=//div[@class='main-content']
${panelHeadingMovieDetailPage}                      xpath=//div[@class='panel-heading']
${titleMovieDetailPage}                             xpath=//div/div[.='BISMILLAH KUNIKAHI SUAMIMU']
${buttonTrailerMovieDetailPage}                     xpath=//p/button[.=' TRAILER ']

*** Keywords ***
Verify trailer can play
    wait until element is visible                   ${mainContentMovieDetailPage}
    element should be visible                       ${titleMovieDetailPage}
    click element                                   ${buttonTrailerMovieDetailPage}
    location should be                              https://web3.21cineplex.com/movie-trailer/13BKSU.mp4

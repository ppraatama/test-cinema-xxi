*** Settings ***
Resource                ../../Frameworks/Routers.robot


*** Variables ***
${mainContentUpComingPage}                      xpath=//div[@class='main-content']
${listMovieUpComingPage}                        xpath=//div/div[@class='grid']
${titleUpComingPage}                            xpath=//div/div[@class='panel-title']
${cardMovieUpComingPage}                        xpath=//div/a[@href='gui.movie_details.php?sid=&movie_id=23AMBH']
${mainContentMovieUpComingPage}                 xpath=//div[@class='main-content']
${panelHeadingUpcomingPage}                     xpath=//div[@class='panel-heading']
${titleMovieUpcomingPage}                       xpath=//section//div[@class='panel-heading']/div[@class='row']/div[2]/div[.='AMBUSH ']
${trailerButtonUpcomingPage}                    xpath=//p/button[.=' TRAILER ']

*** Keywords ***
Choose Movie
    wait until element is visible               ${mainContentUpComingPage}
    element should be visible                   ${mainContentUpComingPage}
    element should be visible                   ${listMovieUpComingPage}
    element should be visible                   ${titleUpComingPage}
    element should be visible                   ${cardMovieUpComingPage}
    click element                               ${cardMovieUpComingPage}

Verify trailer from upcoming can play
    wait until element is visible               ${mainContentMovieUpComingPage}
    element should be visible                   ${titleMovieUpcomingPage}
    click element                               ${trailerButtonUpcomingPage}
    location should be                          https://web3.21cineplex.com/movie-trailer/23AMBH.mp4
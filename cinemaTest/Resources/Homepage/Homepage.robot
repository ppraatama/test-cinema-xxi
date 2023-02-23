*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${headerMenuHomepage}                               xpath=//div[@class='navbar-header']
${headerImageMenuHomepage}                          xpath=//div/a/img[@src='images/header.png']
${headerNavbarNowPlayingMenuHomepage}               xpath=//div/ul/li/a[@href='index.php?sid=']
${headerNavbarUpComingMenuHomepage}                 xpath=//div/ul/li/a[@href='gui.coming_soon.php?sid=']
${headerNavbarTheatersMenuHomepage}                 xpath=//div/ul/li/a[@href='gui.list_theater.php?sid=']
${headerNavbarPlayingMenuHomepage}                  xpath=//div/ul/li/a[@href='gui.list_city.php?sid=']
${headerNavbarAboutMenuHomepage}                    xpath=//div/ul/child::li/a[@href='#']
${gridMovie}                                        xpath=//div[@class='grid']
${gridCardMovie}                                    xpath=//div[@class='grid_movie']/child::a

*** Keywords ***
User input URL
    wait until element is visible                   ${headerMenuHomepage}
    wait until element is visible                   ${headerImageMenuHomepage}
    wait until element is visible                   ${headerNavbarAboutMenuHomepage}
    wait until element is visible                   ${headerNavbarNowPlayingMenuHomepage}
    wait until element is visible                   ${headerNavbarPlayingMenuHomepage}
    wait until element is visible                   ${gridMovie}
    wait until element is visible                   ${gridCardMovie}
    location should be                              https://m.21cineplex.com/
    click element                                   ${gridCardMovie}

User click playing in menu
    wait until element is visible                   ${headerNavbarPlayingMenuHomepage}
    click element                                   ${headerNavbarPlayingMenuHomepage}

User click up coming menu
    wait until element is visible                   ${headerNavbarUpComingMenuHomepage}
    click element                                   ${headerNavbarUpComingMenuHomepage}
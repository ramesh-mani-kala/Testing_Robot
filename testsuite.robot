*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${CHROME_OPTIONS}    --headless --no-sandbox --disable-dev-shm-usage
${SLEEP}    3
${NEW_TAB_URL}    about:blank

*** Test Cases ***
New Tab test
    Open Browser    ${NEW_TAB_URL}    ${BROWSER}    options=${CHROME_OPTIONS}
    # Navigate to a specific URL after opening a new tab
    Go To    https://www.example.com
    # Use a more reliable XPath or another locator strategy
    Click Element    xpath=(//span)[1]
    Sleep    ${SLEEP}
    Click Element    xpath=(//span)[1]
    Sleep    ${SLEEP}
    Close Browser
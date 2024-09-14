*** Settings ***
Library    AppiumLibrary

Suite Teardown    Close Application

*** Variables ***
${REMOTE_URL}     https://hub-cloud.browserstack.com/wd/hub

*** Test Cases ***
Test Browserstack
    Open Application    ${REMOTE_URL}
    Click Page Element    //android.widget.FrameLayout[@content-desc="My lists"]
    Click Page Element    //android.widget.FrameLayout[@content-desc="History"]
    Click Page Element    //android.widget.FrameLayout[@content-desc="Nearby"]
    Click Page Element    //android.widget.FrameLayout[@content-desc="Explore"]

*** Keywords ***
Click Page Element
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}
    Click Element    ${element}
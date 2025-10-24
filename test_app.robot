*** Settings ***
Library    AppiumLibrary

Suite Teardown    Close Application

*** Variables ***
${REMOTE_URL}     https://hub-cloud.browserstack.com/wd/hub

*** Test Cases ***
Test Browserstack
    Open Application    ${REMOTE_URL}
    Click Page Element    //android.widget.Button[@resource-id="org.wikipedia.alpha:id/fragment_onboarding_forward_button"]
    Click Page Element    //android.widget.Button[@resource-id="org.wikipedia.alpha:id/fragment_onboarding_forward_button"]
    Click Page Element    //android.widget.Button[@resource-id="org.wikipedia.alpha:id/fragment_onboarding_forward_button"]
    Click Page Element    //android.widget.Button[@resource-id="org.wikipedia.alpha:id/fragment_onboarding_done_button"]
    Click Page Element    //android.widget.FrameLayout[@content-desc="Saved"]
    Click Page Element    //android.widget.FrameLayout[@content-desc="Search"]
    Click Page Element    //android.widget.FrameLayout[@content-desc="Explore"]

*** Keywords ***
Click Page Element
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}
    Click Element    ${element}
*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/CommonKeywords.robot
Resource        ../keywords/RegisterPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables        ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register future skill
    When user register to future skill platform with ${email} and ${valid_password}
    When user enter OTP received as ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
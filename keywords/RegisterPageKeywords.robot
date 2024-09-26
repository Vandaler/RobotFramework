*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${username} and ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${username}
    CommonKeywords.Wait until element is ready then input text        name=firstName        Panuwat
    CommonKeywords.Wait until element is ready then input text        name=lastName        Thammabut
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber     0986533754
    CommonKeywords.Wait until element is ready then input text        name=newPassword         ${password}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword         ${password}
    CommonKeywords.Wait until element is ready then click element    //*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

user enter OTP received as ${expected_message}
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}


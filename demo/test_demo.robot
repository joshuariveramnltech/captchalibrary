# Created 24/09/2019 15:09 UTC-8
# Author: Joshua Kim Rivera
# email: joshua.rivera@mnltechnology.com
# Github Repository: https://github.com/joshuariveramnltech/rf-captchalibrary
*** Settings ***
Documentation                               Sample test decode os a base64 captcha.
# Import the rfcaptchalibrary Library.
# Refer to https://joshuariveramnltech.github.io/rf-captchalibrary/ for the Keyword Documentation.
Library                                     CaptchaLibrary
...                                         TC_API_KEY=%{TCP_API_KEY}

Library                                     Collections

*** Variable ***
&{location}                                 x=607       y=1288
&{size}                                     height=124      width=446

*** Test Case ***
# Run this test file using this command.
# robot test.robot (assuming that you are inside this directory)

Test Forgot Captcha Decode
    [Documentation]                         Sample Captcha Decode using CaptchaLibrary.
    [Tags]                                  forgotcaptcha
    # Log To Console                          ${location}
    # Log To Console                          ${size}
    # Capture Element From Screenshot         device_screenshot.png           ${location}
    # ...                                     ${size}         element.png
#    the test assumes that the base64 captcha will be in the exec directory and is named element.png
    ${b64}                                  Convert Captcha Image To Base64     ${EXECDIR}/v3.png
    Log To Console                          ${b64}
    # ${decoded_captcha} =                    Decode Base64 Captcha           ${EXECDIR}/v3.png
#    Uses robotframework BuiltIn Library to log the decoded captcha to the console.
    # Log to Console                          ${decoded_captcha}

Test Two Captcha SimpleCaptcha Decode
    [Documentation]                         SimpleCaptcha Decode using 2Captcha Service API.
    [Tags]                                  twocaptcha
    ${answer}                               TC SimpleCaptcha Solve                  ${EXECDIR}/easy.png
    Log To Console                          ${answer}

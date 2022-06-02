CaptchaLibrary
================
  
Library Scope: __GLOBAL__  
Created: __23/09/2019 15:58 UTC-8__  


Author: __Joshua Kim Rivera | email:joshua.rivera@mnltechnology.com__

Company: [__Spiralworks Technologies Inc.__](http://www.spiralwrks.com/)


##### Contents:
- [CaptchaLibrary](#captchalibrary)
    - [Contents](#contents)
    - [Introduction](#introduction)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Generating Documentation](#generating-documentation)
    - [Dependencies](#dependencies)

 

### Introduction
**CaptchaLibrary** is a [Robotframework](https://www.robotframework.org) Test Library for decoding Captchas.  
![PyPI](https://img.shields.io/pypi/v/rf-captchalibrary?style=for-the-badge) 
![PyPI - Downloads](https://img.shields.io/pypi/dd/rf-captchalibrary?style=for-the-badge)
![PyPI - Python Version](https://img.shields.io/pypi/pyversions/rf-captchalibrary?style=for-the-badge)
  
View the latest keyword [Documentation here.](https://mainsystemdev.github.io/rf-captchalibrary/)

### Installation
**Option 1**  
Install using pypi, run:
```bash
pip install rf-captchalibrary
```
**Option 2**  
With recent version of `pip`, it is possible to install directly from GitHub repository. To Install latest source
from the master branch, use this command:
```bash
pip install git+https://github.com/MainSystemDev/rf-captchalibrary.git
```
Please note that installation will take some time, because ``pip`` will
clone the [CaptchaLibrary](https://github.com/MainSystemDev/rf-captchalibrary) project to a temporary directory and then
perform the installation.


### Usage
To use CaptchaLibrary in Robot Framework tests, the library needs to
first be imported using the `Library` setting as any other library.
It is important to Note that CaptchaLibrary requires the serviceUrl as parameter
upon import, see example below.

```robotframework
*** Settings ***
Documentation               Simple example using CaptchaLibrary
Library                     CaptchaLibrary          serviceUrl=sample.captcha.service.url

*** Variables ***
${sample_variable}

*** Test Cases ***
Test Case Sample One
    ${captcha}              Decode Base64 Captcha           path/to/image
    Log To Console          ${captcha}

```

### Generating Documentation
To Generate the keyword Documentation, simple run:
```bash
python -m robot.libdoc CaptchaLibrary documentation.html
```
Note that the library must first be installed before generating a documentation.


### Dependencies
* [Requests](https://pypi.org/project/requests/)
* [Pillow](https://pypi.org/project/Pillow/)

appium_page_object
==================

Contains appium code using page-object pattern


Environments verified against
==============================
Xcode5.1 + OSX 10.9.2 mavericks + appium 1.0 + Gemfile (bundle install)


MobileAppAutomation - Appium & Selenium
========================================

Mobile App automation with Selenium, appium, ruby and the world of gems  

Introduction to Appium - (http://appium.io/introduction.html?lang=en)  

Why Appium?  
===========

Appium philosophy follow's four principles  

1) Test the same app you submit to the marketplace  

2) Write your tests in any framework, using any language  

3) Use a standard automation specification and API  

4) Build a large and thriving open-source community effort.   

The entire competitive analysis of the tools Calabash, Frank, UIAutomation, ios-driver, KeepitFunctional on iOS and  
calabash-android, MonkeyTalk, Robotium, UIAutomator, selendroid and APPIUM is here  

https://saucelabs.com/resources/mobile-testing-tools

Background
============
The world of mobile apps (i apps and android apps) is ever growing and test automation of the apps is an exciting area to be in.
In my past experience, I worked with tools like Frank, Calabash, Sikuli, Perfecto mobile to start with. However what these
tools lacked was the holistic experience we get similar to using Selenium on web apps. Selenium is a revolutionary library
on the web apps side as it has taken test Automation to a whole new level. I would like to mention Selenium GRID here and how
the server can help cross browser testing, parallel testing and the ability for a user to pick options.  
Think of Appium server as a Selenium GRID on the mobile side. Appium server accepts GET and POST request implemented over
JSON wire protocol and converts them into commands that an i-app or android app can understand and execute further
Say no further - Please read about this awesome project here (http://appium.io)  
Btw, saucelabs offers appium through the cloud - need I say more now....

Pre-requisites
================
Mac with local admin privileges (I cannot stress how much important is to have admin privileges, without which your hands are tied completely)  
Xcode – The IDE for developing iOS applications. I am using Xcode 5.1 for this code  
Command-line tools – The set of libraries that are installed on Mac (generally come associated with Xcode)  
iOS SDK -- comes with Xcode  
Apple Instruments - Comes along with Xcode and associated tools  
UIAutomation -js interface for interacting with elements on iOS apps  
Apple OSX – The operating system on Mac  (As of writing this post latest is 10.9.2 called Mavericks)  
I also read this blog which was well written (http://shashikantjagtap.net/ios-automated-testing-in-the-bdd-with-appium-cucumber-on-mac-osx/)  
Install Ruby > 2.0  
Download appium and install to /Applications

What is there in this project
==============================

1) A simple calculator app   
2) calculator.feature - one scenario launches the app and adds two numbers  
3) Calculator_appium.feature - scenario that depicts page-object design pattern and Keyword design pattern  
4) env.rb creates a connection to appium and returns the driver object  
5) features/resources - has the app file and also Workbook_csv.csv  
6) Workbook_csv.csv is a file used in Keyword design pattern if we wish to pass information from a spreadsheet  
7) In page-object design pattern, we maintain the locator information in a class aka. page-object  

It is entirely upto the user which pattern (keyword or page-object) to use, however I believe a hybrid pattern like the one
in this project is recommended, so that we get the positives of both the design pattern  

Installation
==============

1) git clone  
2) bundle install  
3) cucumber features  

Assumptions  
=============
The setup of Xcode, Appium, target app that runs on Xcode is done and you have basic knowledge of how to use a mac

Contributing  
=============
Fork it ( https://github.com/[my-github-username]/rd/fork )  
Create your feature branch (git checkout -b my-new-feature)  
Commit your changes (git commit -am 'Add some feature')  
Push to the branch (git push origin my-new-feature)  
Create a new Pull Request  



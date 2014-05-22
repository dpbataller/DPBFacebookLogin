# DPBFacebookLogin Sample

![DPBFacebookLogin icon](http://imageshack.com/a/img843/1882/c7jl.png)

## Overview

**DPBFacebookLogin**, a example that show how can we use the feature *Login With Facebook* for *iOS* using Facebook SDK 3, iOS 7 and auto layout.

This example consists of an application with **2 View Controllers** (*DPBLoginViewController* and *DPBProfileViewController*). 

- **DPBLoginViewController** is responsible to handler the login process.
	
	![DPBLoginViewController image](http://imageshack.com/a/img844/9576/of0b.png)

- **DPBProfileViewController** is responsible to display user information once it is logged in the view. The user can log off and return to the main View Controller to log on in other occasions.

	![DPBLoginViewController image](http://imageshack.com/a/img836/5884/2he1.png)



> To handle *Login With Facebook* feature is neccesary register your app in  **Facebook Developers Webstie** and configure some parameters in **Xcode project**:


## Registering your app in Facebook Developers Website

1. If you haven't already registered your app with Facebook by creating a Facebook app, you must create a new app on the App Dashboard <https://developers.facebook.com/apps/>. In the App Dashboard, select Apps > Create a New App. 
2. Fill in the basic information  **Display Name** and **Category**, others are optionaly. After this click on the Create App button.
3. The next step is to enable the app login from iOS. Click on the Settings option in the left menu, and in the main area click on the +Add Platform big button. In the new window, select the iOS platform. A new panel is appeared on the dashboard titled iOS. In the Bundle ID field, it’s very important to enter the exact same to the project’s Bundle Identifier value, otherwise the app users won’t be able to be authorized. So, go back to Xcode, click on the project target on the Project Navigator pane, and under the General tab copy the value of the Bundle Identifier field.
Return on the Facebook dashboard, and paste or type the Bundle Identifier in the Bundle ID field. Also, make sure to enable the Single Sign On toggle button. Finally, click on the Save Changes button and this step is ready.
4. Download the [Facebook SDK for iOS](https://developers.facebook.com/docs/ios/) and install the package. By default, the package is extracted on the Documents directory of your user account on your computer.

## Configuring your Xcode project

2. Open the DPBFacebookLogin project and go to DPBFacebookLogin-Info.plist file. Edit the **FacebookAppID**,**FacebookDisplayName**,**URL types** rows with the Facebook App information created before in Facebook Developers Webiste. 

	>In URL types row, you must append your FacebookAppID to the fb words Ej: fb1456411552408175
	
 	![DPBLoginViewController image](http://imageshack.com/a/img835/3121/lrzn.png)
 	
3. Compile the code and ¡Volià!

> You can read full instrucctions about this procces on [Facebook Docs](https://developers.facebook.com/docs/ios/getting-started)

 *** You can follow me on Twitter [@dpbataller](http://twitter.com/dpbataller) ***
 

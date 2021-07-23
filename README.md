# The simple authorization application.
This is simple authorization application with REST API.

## Test scenario:
- Create simple application for authorization.
- Create functional for work with backend from application.
- Create automation scripts for application.
- Generate report after running automation scripts. 
    
## Requirements:
- Use any *object-oriented language* (Objective-C or Swift).
- Use automation patterns like *PageObject*, *data-driven* tests, etc.
- Use any testing frameworks (XCUITest). 
- provide code and clear instructions how to run it.

**Note**: please put your code in public repository.

**Note**: Please send link to this repo when you are done.

**Note**: Please use this backend server (https://github.com/vaskocuturilo/Server-Note-App).

![](https://d.radikal.ru/d27/2107/d7/ba3bdd553416.png)


You will need the following technologies available to try it out:
* Git
* Alamofire
* XCUITest
* Swift 5
* Xcode 
### Ho w to run

``` xcodebuild test -workspace SimpleAuthorizationWithRest.xcworkspace -scheme SimpleAuthorizationWithRest -destination 'platform=iOS Simulator,name=iPhone 8,OS=14.0' -resultBundlePath TestResults```

# xcresults
A command line tool to extract test summaries & screenshots from Xcode 11 XCResult files.

# Installation
Download latest version from github releases:

wget https://github.com/eroshenkoam/xcresults/releases/latest/download/xcresults

# And make it executable:

chmod +x xcresults

### Generate Allure report 

```./xcresults export TestResults.xcresult/ outputDirectory```

### Open Allure report in browser

```allure serve outputDirectory/```


![](https://a.radikal.ru/a02/2107/75/87e8010ceec7.png)
![](https://c.radikal.ru/c38/2107/0f/42c81b9054b1.png)


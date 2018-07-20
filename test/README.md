# About the tests
Each of the CIS tests is a seperate bash shell script that "can stand on it's own two feet", meaning that if you wanted to run the single test script on a server, you can, without having to worry about any other dependencies.  Yes, it makes the development a little bit more cumbersome, but the ability to simply run the script is valuable.
## Script logic
Each script is a specific CIS test.
* If it succeeds, the error code is 0.
* If it fails for any reason, it will return 1.
* The script may return some info (when executed manually) to help you identify what needs to be fixed.



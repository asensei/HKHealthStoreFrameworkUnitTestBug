# HKHealthStoreFrameworkUnitTestBug
Shows a bug with HKHealthStore authorization in a framework unit test.

Summary:
Running unit tests on a framework it fails to allow the HKHealthStore to authorize because the NSHealthShareUsageDescription and NSHealthUpdateUsageDescription keys are not found in the info.plist (they are there).

The unit test can't run because the healthstore can't authorize and crashes with an exception.

Initialising an HKHealthStore in a framework when called from an app that includes the framework works fine and running unit tests in the app also fine.

Please see the attached test code that reproduces the bug.

Steps to Reproduce:
Example test framework project attached. Just run the unit test. You'll see that the test fails (it catches the exception that shouldn't happen).

Initialises a HKHealthStore and tries to authorise. An exception is thrown which says to include the keys NSHealthUpdateUsageDescription and NSHealthShareUsageDescription in the info.plist. They are in both the framework and unit test info.plists and are not being found.

When this framework is included in an app which has the keys in its info.plist the unit test will pass.

Expected Results:
We expect to be able to run a unit test for authorisation of the healthstore.

Actual Results:
Crashes with and exception "NSHealthShareUsageDescription must be set in the app's Info.plist in order to request read authorization."

Version:
Simulator iOS9 and iOS10

Notes:


Configuration:
XCode8 with simulator and iOS 10


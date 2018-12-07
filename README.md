# FormStack_Automation_Example



Formstack Automation with Robot Framework POC

Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development (ATDD). It has easy-to-use tabular test data syntax and it utilizes the keyword-driven testing approach. Its testing capabilities can be extended by test libraries implemented either with Python or Java, and users can create new higher-level keywords from existing ones using the same syntax that is used for creating test cases.


This automated test steps through the following workflows:

1. Sign in
2. Document Search
3. Strategic Plan Form Fill in




Test Dependacies:

<b>Install Robot Framework w/ pip:</b>

<pre>pip install robotframework</pre>

<b>Install the SeleniumLibrary for RF w/ pip:</b>

<pre>pip install --upgrade robotframework-seleniumlibrary</pre

<b>Install chromedriver</b>

<pre>brew install chromedriver</pre>

<b>Run the tests</b>

<pre>robot -d results FormStack_Automation_Ex/ExecuteTestCases.robot</pre>


Helpful Pycharm Plugins:

<pre>IntelliBot</pre>
<pre>Robot Framework Support</pre>

<b>Test Results<b/>
  
Test results are displayed as a log, report, or as xml.  The logs are reports provide a detailed view of the test suite. They also allow you to drill into the each test which is helpful for test debugging. If there is a failed test Robot Framework included a screen shot of the point of failure.

Test results can be found in the results folder.





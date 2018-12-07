
<h1>FormSwift Automation with Robot Framework</h1>

Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development (ATDD). It has easy-to-use tabular test data syntax and it utilizes the keyword-driven testing approach. Its testing capabilities can be extended by test libraries implemented either with Python or Java, and users can create new higher-level keywords from existing ones using the same syntax that is used for creating test cases.


<h4>This automated test steps through the following workflows:</h4>

1. Sign in
2. Document Search
3. Strategic Plan Form Fill in




<h4>Test Dependacies:</h4>

<b>Install Robot Framework w/ pip:</b>

<pre>pip install robotframework</pre>

<b>Install the SeleniumLibrary for RF w/ pip:</b>

<pre>pip install --upgrade robotframework-seleniumlibrary</pre

<b>Install chromedriver</b>

<pre>brew install chromedriver</pre>

<b>Run the tests</b>

<pre>robot -d results FormStack_Automation_Ex/ExecuteTestCases.robot</pre>


<h4>Helpful Pycharm Plugins:</h4>

<pre>IntelliBot</pre>
<pre>Robot Framework Support</pre>

<h4>Test Results</h4>
  
Test results are displayed as a log, report, or as xml.  The logs and reports provide a detailed view of the test suite. They also allow you to drill into the each test which is helpful for test debugging. If there is a failed test Robot Framework includes a screen shot of the point of failure.

Test results can be found in the results folder.



<b>Test Log Example:</b>

https://screencast.com/t/5aQjWIKqHv

<b>Test Report Example:</b>

https://screencast.com/t/BQ2go33625


<b>Test Execution Video: This is a video of the full test suite being executed</b>

https://screencast.com/t/teFmLpHaxxK



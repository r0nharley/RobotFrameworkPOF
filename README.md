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


<pre>pip install -U robotframework-difflibrary</pre>

<b>Install chromedriver</b>

<b>Run the tests</b>

<pre>robot -d results FormStack_Automation_Ex/ExecuteTestCases.robot</pre>

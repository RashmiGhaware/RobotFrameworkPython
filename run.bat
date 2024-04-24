@echo off
rem Change directory to the directory containing your Robot Framework tests
cd C:\Users\Rashmi.Ghaware\AutomationProject\pythonProject1

rem Run the tests using pabot with 2 processes and specify the output directory
pabot --processes 2 --outputdir Results TestCases\*.robot

rem Pause to keep the command prompt window open after execution
pause

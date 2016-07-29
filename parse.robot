*** Settings ***
Library           ../../../Python27/Lib/site-packages/RequestsLibrary/RequestsKeywords.py

*** Test Cases ***
TestParse
    Create Session    sniff_session    http://192.168.16.164:10990
    ${res}    Get Request    sniff_session    sniff    \    url=http://www.mp4ba.com/show.php?hash=5a8d4335e3f64391112e2964ca9ac9ea834f4881
    Should Be Equal As Strings    ${res.status_code}    200
    Log    ${res.content}


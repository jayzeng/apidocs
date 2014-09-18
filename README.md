# Knock API:

[![Build Status](https://travis-ci.org/knockrentals/apidocs.svg?branch=master)](https://travis-ci.org/knockrentals/apidocs)


# Doc Writing Notes
Apiary.io is an amazing service, but it turns out it's super picky about syntax and formatting and the error handling is borderline better than useless. Below are some common complaints I've come across and how to fix them.
##Complaints and tips:
  + Make sure you're using softabs with a tabsize of 4 spaces, otherwise it WILL explode
  + error: (2)  unexpected list block, expected a group, resource or an action definition, e.g. '# Group <name>', '# \<resource name\> \[\<URI\>\]' or '# \<HTTP method\> \<URI\>'
    + This means you likely didn't indent something as far as it needed to be (usually need atleast 2 tabs); good places to check are the 'body' sections.
  + warning: (10)  message-body asset is expected to be a pre-formatted code block, every of its line indented by exactly 12 spaces or 3 tabs
    + Make sure the core of a 'body' block is atleast 3 tabs/12spaces indented

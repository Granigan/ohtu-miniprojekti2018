Feature: As a user, I can mark any existing blog read or unread.

    Scenario: Unread blogs can be marked as read on the details page
        Given application has been opened
        When show studied is clicked
        And list of 'blog' tips is shown
        And 'blog' tip number 1 is 'not' studied
        And 'blog' tip number 1 is navigated to
        And 'blog' tip is 'not' studied
        And 'blog' tip studied is clicked
        And 'blog' tip is 'already' studied
        And 'Back' button has been clicked
        And show studied is clicked
        Then 'blog' tip number 1 is 'already' studied

    Scenario: Read blogs can be marked as unread on the details page
        Given application has been opened
        When show studied is clicked
        And list of 'blog' tips is shown
        And 'blog' tip number 1 is 'already' studied
        And 'blog' tip number 1 is navigated to
        And 'blog' tip is 'already' studied
        And 'blog' tip studied is clicked
        And 'blog' tip is 'not' studied
        And 'Back' button has been clicked
        And show studied is clicked
        Then 'blog' tip number 1 is 'not' studied
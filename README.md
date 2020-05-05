# Simple real time chat

#### Task

1. Fork it
2. Implement 2 user stories below
3. Back end: Rails API
4. Front end: SPA (any JS framework and webpacker)
5. Keep UI simple, no need to write a lot of CSS
6. If task says nothing about something then you can implement it as you wish.
6. Create PRs in your forked repo (one PR per user story)
7. Send us link to the forked repo

#### User Stories

**1) As an unauthenticated user, I want to enter my credentials so I could get access to the restricted part of the web application**

Acceptance criteria:
* If user is not authenticated then it should show sign in form with email and password fields and submit button
* If user enters valid credentials then it should authenticate a user and show a page with the user name and successful notification
* If user enters invalid credentials then it shouldn't authenticate a user and show unsuccessful notification
* If user is already authenticated then after page reloading it shouldn't ask to enter credentials again

**2) As an authenticated user, I want to send messages so other authenticated users can read them and reply back**

Acceptance criteria:
* After successful singing in user should see a view with a chat (area with the chat, new message text field and Send button )
* If any user sends a message then all authenticated users should receive it and it should be displayed in the chat
* If user reloads the page then after reloading page should contain all previous messages  


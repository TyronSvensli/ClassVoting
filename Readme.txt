A website I made for my grade in order to vote for class representative
This was made in a limited timeframe so there are many imperfections, but it is functional.

I used simple HTML and almost non-existant styling for the frontend because I only had responsibility for the functionality of the voting system.

The functionality of the voting system is made using JavaScript and MySQL, you input your student token(generated using token_gen/student_token_gen.py) this token is then sent to the database and the server script further sends a MySQL query in order to retrieve the candidates in your class, the rest is pretty straight forward.
  
under token_gen/ lies the class list csv files that I got handed from a fellow student(I've replaced all the names and emails using ChatGPT for privacy reasons) and there also lies a script I made in order to generate random student tokens and quickly format those csv files into SQL DB file format for in order to minimize manual labour for myself.

Security:
The input field is somewhat sanitized as it only allows integers like your token, but... if you interfere with the post request you can easily change out your token for a SQLi query.
This is a critical vulnerability in my application, and it's not even that hard to fix, but seeing as I had a very limited timeframe I didn't have time to fix it. #but it went fine anyways since it's not like my class is filled with 1337 H4x0rs, some people tried find ways to vote twice and so on, but none of them managed. 💪
There was also the fact that when I had the site up I generated the tokens to be 8 digits long which could easily be fuzzed, but since the voting was only up for a small amount of time no-one would have had time to fuzz anothers token anyways since they'd have to rate limit it so that my application doesn't crash, which also leads me to that my application sure is DOS-able.
So all in all it's not a very secure application, but it holds up for it's intended purpose of a short-term use voting app used by students.
                                                                                    
                                                                                  

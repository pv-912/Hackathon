# Hackathon
 SDS hackathon sponsored by Raxor Pay
 
 ## Techniques
 HTML, CSS, SQL, PHP(for backend), ngrok  for sample hosting 
 
 ## Idea
 The idea was to check the availibility of Professor.
 As we go to profs. office/chamber many times we doesn't found him or he was busy in his work and told to come after some time, and we have to come back. Due to this, our so much time wastes and our interest also goes down. 
 
 ## What we have done
 So what we have done is, we made an app and web portal for student to check his(Professor) availibility before he goes to his room and in Professor's desktop we made an setup in it by installing curl and adding bash script file, so that he get dialogue box after 15 to 30 sec. of opening his laptop. 
 asking him, if he wants to be available for student or not. If prof. click no, all files went stop. If yes then curl request is to server taking parameter of Professor ID and Status = 1. After taking this input, we change the status of that Professor in dynamic database and showed in app and web.

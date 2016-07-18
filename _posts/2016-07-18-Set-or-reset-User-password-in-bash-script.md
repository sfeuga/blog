---
layout: post

title: "Set or Reset User password in bash script"
---
To reset or set the password for a given user in bash you can do it like that :

`echo password | sudo passwd username --stdin`

or like that :

`echo username:new_password | sudo chpasswd`

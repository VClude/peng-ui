# Pengaduan API

## User Route
| Method | Route | Parameter | Return/Info | Note |
|--|--|--|--|--|
|POST| /api/plogin | email,password | Your Credentials and your API Access Token
|POST| /api/pregister| name,email,password,c_password (a.k.a confirm password) | Your Credentials and your API Access Token
|GET| /api/myaccount|  | Your Credentials Information
|PUT| /api/myaccount | old_password, name, new_password, _method (at the moment, could be added more parameter in the future) | Update Credentials | fill PUT in _method params

## Complain Route
| Method | Route | Parameter | Return/Info | Note |
|--|--|--|--|--|
|POST| /api/keluhan | required : content, location, category_id, image (required jpeg, png, gif, svg, 4MB limit) | Create new Keluhan
|GET| /api/keluhan |  | GET All Keluhan with sortable and filterable stuff 
|GET| /api/keluhan/{id} |  | Show Specific Keluhan
|GET| /api/{status}/{id}|  | Process/Reopen/Complete Keluhan | status variable : /api/process,/api/reopen,/api/complete,  *Need Surveyor Privileges/Ticket Owner*|
|DELETE| /api/keluhan/{id} |  | Delete Specific Keluhan | Need Admin Privileges

## Comment Route
| Method | Route | Parameter | Return/Info | Note |
|--|--|--|--|--|
|POST| /api/comments | required : ticket_id, content | comment to the keluhan
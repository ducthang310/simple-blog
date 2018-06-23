
# A Simple Blog With Laravel
## Basic features

1. Users use form to submit new post. Title is unique
2. Show list of posts
3. Click to post to view post detail: Title, overview, content, date created, date modified
4. Post's content supports Markdown
5. Only authenticated users could write posts
6. Display list of posts with pagination
7. View post details by clicking to link or `Quick view` button
8. Only posts that being approve by Admin could be shown
9. User can only update posts of their own 

## Notes

- There are two user roles: Admin & normal user- 
- If your account is admin, you'll see `Your name (Admin)` in top-right conner
- If your account is admin, you'll see `Pending post` link in top menu
- Admin: ssstest101@gmail.com  /  123123
- Member: ssstest102@gmail.com  /  123123

## Install
You can download source code in here: https://github.com/ducthang310/simple-blog
For online version, please check my demo in here: http://simple-blog.shiroad.com
To get local version, please follow the below steps:

``` bash
# Install various packages and dependencies
composer install

# Create database, update database name, db user, db password for .env file
php artisan migrate --seed   // Create necessary tables & import seed data

# Or you can use sample database  (database/sample/20180624.sql)
# Open development server, by default: http://127.0.0.1:8000
php artisan serve
# Open server on yours port
php artisan serve --port=8080
```


@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <h4>A Simple Blog With Laravel</h4>
            <h5>
                Basic features:
            </h5>
            <ul>
                <li>Users use form to submit new post. Title is unique</li>
                <li>Show list of posts</li>
                <li>Click to post to view post detail: Title, overview, content, date created, date modified</li>
                <li>Post's content supports Markdown</li>
                <li>Only authenticated users could write posts</li>
                <li>Display list of posts with pagination</li>
                <li>View post details by clicking to link or `Quick view` button</li>
                <li>Only posts that being approve by Admin could be shown</li>
                <li>User can only update posts of their own</li>
            </ul>
            <br>
            <h5>Notes:</h5>
            <ul>
                <li>There are two user roles: Admin & normal user</li>
                <li>If your account is admin, you'll see `Your name (Admin)` in top-right conner</li>
                <li>If your account is admin, you'll see `Pending post` link in top menu</li>
                <li>Admin: ssstest101@gmail.com  /  123123</li>
                <li>Member: ssstest102@gmail.com  /  123123</li>
            </ul>

            <br>
            <h5>Install:</h5>
            <p>You can download source code <a href="https://github.com/ducthang310/simple-blog" target="_blank">in here</a></p>
            <p>For online version, please check my demo <a href="http://simple-blog.shiroad.com" target="_blank">in here</a></p>
            <p>To get local version, please follow the below steps:</p>
            <div class="st-code">
                <div class="st-code__line">composer install  <span class="tooltip-txt">// Install various packages and dependencies</span></div>
                <div class="st-code__line normal-txt">Create database, update database name, db user, db password for .env file</div>
                <div class="st-code__line">php artisan migrate --seed  <span class="tooltip-txt">// Create necessary tables & import seed data</span></div>
                <div class="st-code__line normal-txt">Or you can use sample database <span class="tooltip-txt">(database/sample/20180624.sql)</span></div>
                <div class="st-code__line">php artisan serve  <span class="tooltip-txt">// Open development server, by default: http://127.0.0.1:8000</span></div>
                <div class="st-code__line">php artisan serve --port=8080  <span class="tooltip-txt">// Open server on yours port</span></div>
            </div>
        </div>
    </div>
</div>
@endsection

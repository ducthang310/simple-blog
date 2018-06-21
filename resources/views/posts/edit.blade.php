@extends('layouts.app')
@section('title', 'Create post')

@section('content')
    <form class="container" method="post" action="{{ route('posts.update', ['id' => $post->id]) }}">
        {{ csrf_field() }}
        @method('PUT')
        <div class="row pc__bar">
            <h3 class="col-md-6">
                Edit post
            </h3>

            <div class="col-md-6 pd__bar-right">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </div>

        <div class="row">
            @if (Session::has('message'))
                <div class=" col-md-12">
                    <p class="alert alert-info">{{ Session::get('message') }}</p>
                </div>
            @endif

            <div class="col-md-3 form-group">
                <input type="text" name="title" class="form-control" placeholder="Title" value="{{$post->title}}">
            </div>
            <div class="col-md-12 form-group">
                <textarea name="overview" class="form-control text-area" placeholder="Overview">{{$post->overview}}</textarea>
            </div>
            <div class="col-md-12 pc__content">
                <textarea name="content" class="form-control text-area" placeholder="Type your idea...">{{$post->content}}</textarea>
            </div>

        </div>
    </form>
@endsection

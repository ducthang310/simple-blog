@extends('layouts.app')
@section('title', 'Show post')

@section('content')
    <div class="container">
        <div class="row pd__bar">
            <h3 class="col-md-6">
                {{$post->title}}
            </h3>

            @if ($isOwn)
                <div class="col-md-6 pd__bar-right">
                    <a href="{{route('posts.edit', ['id' => $post->id])}}" class="btn btn-primary">Edit</a>
                </div>
            @endif

            <div class="col-md-12 pd__info">
                <span><i class="far fa-user"></i>  {{$post->user ? $post->user->name : ''}}</span>
                <span><i class="far fa-calendar-alt"></i>  Updated at: {{$post->updated_at}}</span>
                <span><i class="far fa-calendar-alt"></i>  Created at: {{$post->created_at}}</span>
            </div>
        </div>

        <div class="row justify-content-center pd__main">
            <!-- will be used to show any messages -->
            @if (Session::has('message'))
                <div class="alert alert-info">{{ Session::get('message') }}</div>
            @endif

            <div class="col-md-12 pd__content" id="pd-content">{{$post->content}}</div>
        </div>
    </div>
@endsection


@push('footer-scripts')
    <script type="text/javascript" src="https://rawgit.com/showdownjs/showdown/develop/dist/showdown.min.js"></script>
    <script>
        var converter = new showdown.Converter(),
            html      = converter.makeHtml($('#pd-content').html());
        $('#pd-content').html(html).addClass('active');
    </script>
@endpush
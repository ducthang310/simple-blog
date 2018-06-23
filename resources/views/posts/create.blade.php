@extends('layouts.app')
@section('title', 'Create post')

@section('content')
    <form class="container post-form" method="post" action="{{ route('posts.store') }}">
        {{ csrf_field() }}
        <h3>
            New post
        </h3>

        <div class="row">
            @if (Session::has('message'))
                <div class=" col-md-12">
                    <p class="alert alert-info">{{ Session::get('message') }}</p>
                </div>
            @endif

            <div class="col-md-3 form-group">
                <label>Title</label>
                <input type="text" name="title" class="form-control" placeholder="Title" value="{{old('title')}}">
            </div>
            <div class="col-md-12 form-group">
                <label>Overview <span class="tooltip-txt">(used in post list)</span></label>
                <textarea name="overview" class="form-control text-area" placeholder="Overview">{{old('overview')}}</textarea>
            </div>
            <div class="col-md-12 pc__content">
                <label>Content <span class="tooltip-txt">(supports markdown)</span></label>
                <textarea name="content" class="form-control text-area" id="p-content" placeholder="Type your idea...">{{old('content')}}</textarea>
            </div>

        </div>

        <div class="pc__preview">
            <h4>Preview content</h4>
            <div id="pc-preview"></div>
        </div>

        <div class="post-btn">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
@endsection


@push('footer-scripts')
    <script>
        $('#p-content').on('keyup', function () {
            _app.updatePostPreview('p-content', 'pc-preview');
        });

        _app.updatePostPreview('p-content', 'pc-preview');

    </script>
@endpush
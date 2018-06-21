@extends('layouts.app')
@section('title', 'Posts')

@section('content')
<div class="container">
    <div class="row posts__bar">
        <div class="col-md-6">
            <a href="{{route('posts.create')}}" class="btn btn-line">Create a Blog</a>
        </div>

        <div class="col-md-6 posts__pagination">
            {{$posts->render("pagination::bootstrap-4")}}
        </div>
    </div>
    <div class="row justify-content-center">
        <!-- will be used to show any messages -->
        @if (Session::has('message'))
            <div class="alert alert-info">{{ Session::get('message') }}</div>
        @endif

        @foreach($posts as $post)
        <div class="col-sm-6 col-md-4 col-lg-3 posts__item">
            <div class="posts__item-wrap">
                <div class="posts__img-wrap" style="{{$post->styles || ''}}">
                    <button type="button" class="btn btn-preview" data-id="{{$post->id}}" data-toggle="modal" data-target="#preview-modal">Preview</button>
                </div>
                <div class="posts__title">
                    <a href="{{route('posts.show', ['id' => $post->id])}}">{{$post->title}}</a>
                </div>
                <div class="posts__overview">
                    {{$post->overview}}
                </div>
                @if (Route::currentRouteName() === 'posts.pending')
                <div class="posts__btn">
                    <button type="button" class="btn btn-approve">Approve</button>
                </div>
                @endif
            </div>
        </div>
        @endforeach
    </div>


    <!------ Preview ------------>
    <div class="modal fade modal-preview" id="preview-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div id="pv-body" class="modal-body">
                    <div class="pv__top">
                        <div class="col-md-3">

                        </div>
                        <div class="col-md-9">
                            <h4 id="pv-title"></h4>
                            <p id="pv-sub" class="pv__sub"></p>
                        </div>
                    </div>

                    <div id="pv-content" class="pv__content"></div>

                </div>

                <div id="pv-error" class="pv__error">Can not load post data</div>

                <div id="pv-loading" class="pv__loading">

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('footer-scripts')
    <script type="text/javascript">
        var previewUrl = "{{route('posts.json', ['id' => 'post_id'])}}";

        $(document).ready(function () {
            $('#preview-modal').on('show.bs.modal', function (event) {
                var postId = $('.btn-preview').attr('data-id');
                var url = previewUrl.replace('post_id', postId);
                $('#pv-loading').show();
                $.ajax({
                    url: url,
                    type: 'get',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                })
                    .done(function( data ) {
                        if (data && data.success && data.post) {
                            $('#pv-title').html(data.post.title);
                            $('#pv-sub').html(
                                '<span><i class="far fa-user"></i>  ' + (data.post.user ? data.post.user.name : 'No name') + '}}</span>\n' +
                                '<span><i class="far fa-calendar-alt"></i>  Updated at: ' + data.post.updated_at + '</span>\n' +
                                '<span><i class="far fa-calendar-alt"></i>  Created at: ' + data.post.created_at + '</span>'
                            );
                            $('#pv-content').html(data.post.content);
                            pvShowPost()
                        } else {
                            pvShowError();
                        }
                    })
                    .fail(function () {
                        pvShowError()
                    })
                    .always(function () {
                        $('#pv-loading').hide()
                    });
            })
        });

        function pvShowError() {
            $('#pv-body').hide()
            $('#pv-error').show();
        }

        function pvShowPost() {
            $('#pv-body').show()
            $('#pv-error').hide();
        }
    </script>
@endpush
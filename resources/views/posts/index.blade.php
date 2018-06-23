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
            <div class=" col-md-12 alert alert-info">{{ Session::get('message') }}</div>
        @endif

        @foreach($posts as $post)
        <div class="col-sm-6 col-md-4 col-lg-3 posts__item">
            <div class="posts__item-wrap">
                <div class="posts__img-wrap" style="{{$post->styles || ''}}">
                    <button type="button" class="btn btn-preview" data-id="{{$post->id}}">Preview</button>
                </div>
                <div class="posts__title">
                    <a href="{{route('posts.show', ['id' => $post->id])}}">{{$post->title}}</a>
                </div>
                <div class="posts__overview">
                    {{$post->overview}}
                </div>
                @if (Route::currentRouteName() === 'posts.pending')
                <div class="posts__btn">
                    <form method="post" action="{{ route('posts.approve', ['id' => $post->id]) }}">
                        {{ csrf_field() }}
                        <button type="submit" class="btn btn-approve">Approve</button>
                    </form>
                </div>
                @endif
            </div>
        </div>
        @endforeach
    </div>


    <!------ Preview ------------>
    <div class="modal fade modal-preview pv" id="preview-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div id="pv-body" class="modal-body">
                    <h5 id="pv-title" class="pv__title"></h5>
                    <p id="pv-sub" class="pv__sub">
                        <i class="far fa-user"></i><span id="pv-author"></span><br/>
                        <i class="far fa-calendar-alt"></i><span id="pv-updated-at"></span><br/>
                        <i class="far fa-calendar-alt"></i><span id="pv-created-at"></span>
                    </p>

                    <div id="pv-content" class="pv__content"></div>

                </div>

                <div id="pv-error" class="pv__error">Can not load post data</div>

                <div id="pv-loading" class="pv__loading">
                    <i class="fa fa-spinner fa-spin"></i>
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
            $('.btn-preview').click(function () {
                var postId = $(this).attr('data-id');
                var url = previewUrl.replace('post_id', postId);

                $('#preview-modal').modal('show');
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
                            $('#pv-author').html(data.post.user.name);
                            $('#pv-updated-at').html(data.post.updated_at);
                            $('#pv-created-at').html(data.post.created_at);
                            $('#pv-content').html(_app.textToMD(data.post.content));
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
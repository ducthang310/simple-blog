<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show', 'json']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // get all the posts
        $query = Post::with('user')
            ->where('status', Post::STATUS_APPROVED);

        $order = $request->get('order', 'DESC');
        $orderBy = $request->get('order_by', 'id');
        $query->orderBy($orderBy, $order);

        $page = $request->get('page', 1);
        $perPage = $request->get('per_page', 10);

        $posts = $query->paginate($perPage, ['*'], 'page', $page);

        return view('posts.index', compact('posts'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pending(Request $request)
    {
        // get all the posts
        $query = Post::with('user')
            ->where('status', Post::STATUS_PENDING);

        $order = $request->get('order', 'DESC');
        $orderBy = $request->get('order_by', 'id');
        $query->orderBy($orderBy, $order);

        $page = $request->get('page', 1);
        $perPage = $request->get('per_page', 10);

        $posts = $query->paginate($perPage, ['*'], 'page', $page);

        return view('posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:100|unique:posts',
            'overview' => 'required|string|max:290',
            'content' => 'required|string'
        ]);

        if ($validator->fails()) {
            $request->flash();
            $request->session()->flash('message', $validator->errors()->first());

            return redirect()->route('posts.create')->withInput();
        }

        $post = new Post();

        $postData = $request->all();
        $postData['user_id'] = Auth::id();

        $post->fill($postData)->save();

        $request->session()->flash('message', 'The post has been created.');

        return redirect()->route('posts.edit', ['id' => $post->id]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        $data = [
            'post' => $post,
            'isOwn' => Auth::check() && Auth::id() === $post->user_id
        ];

        return view('posts.show', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('posts.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Post $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $postData = $request->all();

        $post->fill($postData)->save();

        $request->session()->flash('message', 'The post has been updated.');

        return redirect()->route('posts.edit', ['id' => $post->id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function json(Request $request)
    {
        try {
            if ($id = $request->route('id')) {
                $post = Post::with('user')
                    ->where('id', $id)
                    ->firstOrFail();

                return response()->json([
                    'success' => true,
                    'post' => $post
                ]);
            }
        } catch (\Exception $e) {
            var_dump($e->getMessage());die;
        }

        return response()->json([
            'success' => false,
            'post' => null
        ]);
    }
}

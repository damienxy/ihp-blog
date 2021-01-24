module Web.View.Posts.Index where
import Web.View.Prelude

data IndexView = IndexView { posts :: [Post] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={PostsAction}>Posts</a></li>
            </ol>
        </nav>
        <h1>Index <a href={pathTo NewPostAction} class="btn btn-primary ml-4">+ New</a></h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>All posts</th>
                        <th>Created</th>
                    </tr>
                </thead>
                <tbody>{forEach posts renderPost}</tbody>
            </table>
        </div>
    |]


renderPost post = [hsx|
    <tr>
        <td><a href={ShowPostAction (get #id post)}>{get #title post}</a></td>
        <td>{get #createdAt post |> timeAgo}</td>
    </tr>
|]

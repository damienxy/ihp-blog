module Web.View.Posts.Show where
import Web.View.Prelude
import qualified Text.MMark as MMark

data ShowView = ShowView { post :: Include "comments" Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <div class="card mb-5">
            <div class="card-body">
                <h1 class="card-title">{ get #title post }</h1>
                <h6 class="card-subtitle mb-2 text-muted">{ get #createdAt post |> timeAgo }</h6>
                <p>{ get #body post |> renderMarkdown }</p>
                <a href={EditPostAction (get #id post)} class="card-link">Edit</a>
                <a href={DeletePostAction (get #id post)} class="card-link js-delete">Delete</a>
            </div>
        </div>
        <section>
            <h5 class="mb-3">Comments</h5>
            {renderComments (get #comments post)}
            <p><a href={NewCommentAction (get #id post)}class="btn btn-primary mb-2">Add comment</a></p>
        </section>
    |]

renderMarkdown text = 
    case text |> MMark.parse "" of
        Left error -> "Something went wrong"
        Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml

renderComments comments = case length comments of
    0 -> [hsx|<p class="font-italic">No comments yet</p>|]
    _ -> forEach comments renderComment

renderComment comment = 
    [hsx|
        <div class="card mb-3">
        <div class="card-body">
            <h5 class="card-title">{get #author comment}</h5>
            <h6 class="card-subtitle mb-2 text-muted"> {get #createdAt comment |> timeAgo}</h6>
            <p class="card-text">{get #body comment}</p>
            <a href={EditCommentAction (get #id comment)} class="card-link text-muted">Edit</a>
            <a href={DeleteCommentAction (get #id comment)} class="card-link text-muted js-delete">Delete</a>
        </div>
        </div>
    |]
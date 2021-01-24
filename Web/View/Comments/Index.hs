module Web.View.Comments.Index where
import Web.View.Prelude

data IndexView = IndexView { comments :: [Comment] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={CommentsAction}>Comments</a></li>
            </ol>
        </nav>
        <a href={pathTo PostsAction}>See posts for comments</a>
    |]
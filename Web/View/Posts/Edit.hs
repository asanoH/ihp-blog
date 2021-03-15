module Web.View.Posts.Edit where
import Web.View.Prelude

data EditView = EditView { post :: Post }

instance View EditView where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Edit Post</li>
            </ol>
        </nav>
        <h1>Edit Post</h1>
        {renderForm post}
    |]

renderForm :: Post -> Html
renderForm post = formFor post [hsx|
    <div>
        <h5>
            Profilfoto
        </h5>

        <div style="max-width: 300px">
            <div class="form-group">
                <label for="user_picture_url">
                    <img id="user_picture_url_preview" src={picturePath} style="width: 12rem; min-height: 12rem; min-width: 12rem" class="mt-2 img-thumbnail text-center text-muted" alt="Foto auswählen"/>
                    <input id="user_picture_url" type="file" name="pictureUrl" class="form-control form-control-file" style="display: none" data-preview="#user_picture_url_preview"/>
                    <a class="d-block text-muted text-center" href="#" onclick="document.getElementById('user_picture_url_preview').click()">profile</a>
                </label>
            </div>
        </div>
    </div>
    {(textField #title)}
    {(textareaField #body) { helpText = "You can use Markdown here"} }
    {submitButton}
|]
      where
        picturePath :: Text
        picturePath = fromMaybe "" $ get #pictureUrl post    

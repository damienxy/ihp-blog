module Application.Helper.View (
    markdownHelpText
    -- To use the built in login:
    -- module IHP.LoginSupport.Helper.View
) where

-- Here you can add functions which are available in all your views
import IHP.ViewPrelude
-- To use the built in login:
-- import IHP.LoginSupport.Helper.View

markdownHelpText :: Text
markdownHelpText = "You can use Markdown here"
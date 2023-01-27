include "base.thrift"
include "interaction.thrift"

namespace go douyin.api

service DouyinApi {
    // basic service
    douyin_feed_response Feed(1:douyin_feed_request req)(api.get="/douyin/feed")
    douyin_user_register_response UserRegister(1:douyin_user_register_request req)(api.post="/douyin/user/register")
    douyin_user_login_response UserLogin(1:douyin_user_login_request req)(api.post="/douyin/user/login")
    douyin_user_response UserMsg(1:douyin_user_request req)(api.get="/douyin/user")
    douyin_publish_action_response PublishAction(1:douyin_publish_action_request req)(api.post="/douyin/publish/action")
    douyin_publish_list_response PublishList(1:douyin_publish_list_request req)(api.get="/douyin/publish/list")

    // interaction service
    douyin_favorite_action_response FavoriteAction(1:douyin_favorite_action_request req)(api.post="/douyin/favorite/action")
    douyin_favorite_list_response FavoriteList(1:douyin_favorite_list_request req)(api.get="/douyin/favorite/list")
    douyin_comment_action_response CommentAction(1:douyin_comment_action_request req)(api.post="/douyin/comment/action")
    douyin_comment_list_response CommentList(1:douyin_comment_list_request req)(api.get="/douyin/comment/list")
}
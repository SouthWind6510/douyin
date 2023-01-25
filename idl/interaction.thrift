namespace go interaction
// idl for kitex interaction
// common struct
struct User{
    1:i64 id
    2:string name
    3:optional i64 follow_count
    4:optional i64 follower_count
    5:bool is_follow
}
struct Video {
    1: i64 id
    2: User author
    3: string play_url
    4: string cover_url
    5: i64 favorite_count
    6: i64 comment_count
    7: bool is_favorite
    8: string title
}

struct Comment {
    1: i64 id
    2: User user
    3: string content
    4: string create_date
}

struct Message {
    1: i64 id
    2: string content
    3: optional string create_time
}

// base response
struct BaseResp{
    1: i32 status_code
    2: optional string status_msg
}

// 赞操作
struct douyin_favorite_action_request{
    1:string token
    2:i64 video_id
    3:i32 action_type
}

struct douyin_favorite_action_response{
    1: BaseResp base_resp
}

// 喜欢列表
struct douyin_favorite_list_request {
    1: i64 user_id
    2: string token
}

struct douyin_favorite_list_response{
    1: BaseResp base_resp
    2: list<Video> video_list
}

service InteractionService {
    // 互动接口
    // 赞操作
    douyin_favorite_action_response UpdateFavoriteActionType(1: douyin_favorite_action_request req)
    // 喜欢列表
    douyin_favorite_list_response GetFavoriteList(1: douyin_favorite_list_request req)
}
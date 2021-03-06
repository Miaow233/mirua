return {
    --Event = "Event", --所有事件[无效]
    --BotEvent = "BotEvent",--有关一个 [Bot] 的事件
    --BotPassiveEvent = "BotPassiveEvent",--被动接收的事件. 这些事件可能与机器人有关
    --BotActiveEvent = "BotActiveEvent",--主动发起的动作的事件
    --BotOnlineEvent = "BotOnlineEvent",--登录完成, 好友列表, 群组列表初始化完成
    --BotOfflineEvent = "BotOfflineEvent",--离线
    --BotOfflineEvent.Active = "BotOfflineEvent.Active",--主动离线
    --BotOfflineEvent.Force = "BotOfflineEvent.Force",--被挤下线
    --BotOfflineEvent.MsfOffline = "BotOfflineEvent.MsfOffline",--被服务器断开
    --BotOfflineEvent.Dropped = "BotOfflineEvent.Dropped",--因网络问题而掉线
    --BotOfflineEvent.RequireReconnect = "BotOfflineEvent.RequireReconnect",--服务器主动要求更换另一个服务器
    --BotReloginEvent = "BotReloginEvent",--主动或被动重新登录. 在此事件广播前就已经登录完毕.
    --BotAvatarChangedEvent = "BotAvatarChangedEvent",--头像被修改（通过其他客户端修改了头像）
    --GroupEvent = "GroupEvent",--有关群的事件
    --GroupMemberEvent = "GroupMemberEvent",--有关群成员的事件
    --MemberJoinEvent = "MemberJoinEvent",--成员已经加入群的事件
    --MemberJoinEvent.Invite = "MemberJoinEvent.Invite",--被邀请加入群
    --MemberJoinEvent.Active = "MemberJoinEvent.Active",--成员主动加入群
    --MemberLeaveEvent = "MemberLeaveEvent",--成员已经离开群的事件
    --MemberLeaveEvent.Kick = "MemberLeaveEvent.Kick",--成员被踢出群. 成员不可能是机器人自己.
    --MemberLeaveEvent.Quit = "MemberLeaveEvent.Quit",--成员主动离开
    --MemberCardChangeEvent = "MemberCardChangeEvent",--成员群名片改动. 此事件广播前修改就已经完成.
    --MemberSpecialTitleChangeEvent = "MemberSpecialTitleChangeEvent",--成员群头衔改动. 一定为群主操作
    --MemberPermissionChangeEvent = "MemberPermissionChangeEvent",--成员权限改变的事件. 成员不可能是机器人自己.
    --MemberMuteEvent = "MemberMuteEvent",--群成员被禁言事件. 被禁言的成员都不可能是机器人本人
    --MemberUnmuteEvent = "MemberUnmuteEvent",--群成员被取消禁言事件. 被禁言的成员都不可能是机器人本人
    --GroupOperableEvent = "GroupOperableEvent",--可由 [Member] 或 [Bot] 操作的事件
    --MemberSpecialTitleChangeEvent = "MemberSpecialTitleChangeEvent",--成员群头衔改动. 一定为群主操作
    --GroupSettingChangeEvent<T>",GroupSettingChangeEvent<*>",--群设置改变. 此事件广播前修改就已经完成.
    --GroupNameChangeEvent = "GroupNameChangeEvent",--群名改变. 此事件广播前修改就已经完成.
    --GroupEntranceAnnouncementChangeEvent = "GroupEntranceAnnouncementChangeEvent",--入群公告改变. 此事件广播前修改就已经完成.
    --GroupMuteAllEvent = "GroupMuteAllEvent",--群 "全员禁言" 功能状态改变. 此事件广播前修改就已经完成.
    --GroupAllowAnonymousChatEvent = "GroupAllowAnonymousChatEvent",--群 "匿名聊天" 功能状态改变. 此事件广播前修改就已经完成.
    --GroupAllowConfessTalkEvent = "GroupAllowConfessTalkEvent",--群 "坦白说" 功能状态改变. 此事件广播前修改就已经完成.
    --GroupAllowMemberInviteEvent = "GroupAllowMemberInviteEvent",--群 "允许群员邀请好友加群" 功能状态改变. 此事件广播前修改就已经完成.
    --BotGroupPermissionChangeEvent = "BotGroupPermissionChangeEvent",--Bot 在群里的权限被改变. 操作人一定是群主
    --BotMuteEvent = "BotMuteEvent",--Bot 被禁言
    --BotUnmuteEvent = "BotUnmuteEvent",--Bot 被取消禁言
    --BotJoinGroupEvent = "BotJoinGroupEvent",--Bot 成功加入了一个新群
    --BotJoinGroupEvent.Active = "BotJoinGroupEvent.Active",--不确定. 可能是主动加入
    --BotJoinGroupEvent.Invite = "BotJoinGroupEvent.Invite",--Bot 被一个群内的成员直接邀请加入了群
    --GroupSettingChangeEvent = "GroupSettingChangeEvent",--群设置改变. 此事件广播前修改就已经完成.
    --BotInvitedJoinGroupRequestEvent = "BotInvitedJoinGroupRequestEvent",--[Bot] 被邀请加入一个群
    --MemberJoinRequestEvent = "MemberJoinRequestEvent",--一个账号请求加入群事件, [Bot] 在此群中是管理员或群主.
    --BotLeaveEvent = "BotLeaveEvent",--机器人被踢出群或在其他客户端主动退出一个群
    --BotLeaveEvent.Active = "BotLeaveEvent.Active",--机器人主动退出一个群
    --BotLeaveEvent.Kick = "BotLeaveEvent.Kick",--机器人被管理员或群主踢出群
    --FriendEvent = "FriendEvent",--有关好友的事件
    --FriendRemarkChangeEvent = "FriendRemarkChangeEvent",--好友昵称改变事件
    --FriendAddEvent = "FriendAddEvent",--成功添加了一个新好友的事件
    --FriendDeleteEvent = "FriendDeleteEvent",--好友已被删除的事件
    --FriendAvatarChangedEvent = "FriendAvatarChangedEvent",--头像被修改. 在此事件广播前就已经修改完毕.
    --NewFriendRequestEvent = "NewFriendRequestEvent",--一个账号请求添加机器人为好友的事件
    --MessagePreSendEvent = "MessagePreSendEvent",--在发送消息前广播的事件
    --GroupMessagePreSendEvent = "GroupMessagePreSendEvent",--在发送群消息前广播的事件
    --UserMessagePreSendEvent = "UserMessagePreSendEvent",--在发送好友或群临时会话消息前广播的事件
    --TempMessagePreSendEvent = "GroupTempMessagePreSendEvent",--在发送群临时会话消息前广播的事件
    --FriendMessagePreSendEvent = "FriendMessagePreSendEvent",--在发送好友消息前广播的事件
    --MessagePostSendEvent = "MessagePostSendEvent",--在发送消息后广播的事件
    --GroupMessagePostSendEvent = "GroupMessagePostSendEvent",--在群消息发送后广播的事件
    --UserMessagePostSendEvent = "UserMessagePostSendEvent",--在好友或群临时会话消息发送后广播的事件
    --TempMessagePostSendEvent = "GroupTempMessagePostSendEvent",--在群临时会话消息发送后广播的事件
    --MessageRecallEvent = "MessageRecallEvent",--消息撤回事件 分为以下两种 统一处理
    FriendRecall = "MessageRecallEvent", --好友消息撤回事件
    GroupRecall = "MessageRecallEvent", --群消息撤回事件
    --BeforeImageUploadEvent = "BeforeImageUploadEvent",--图片上传前. 可以阻止上传
    --ImageUploadEvent = "ImageUploadEvent",--图片上传完成
    --ImageUploadEvent.Succeed = "ImageUploadEvent.Succeed",--图片上传成功
    --ImageUploadEvent.Failed = "ImageUploadEvent.Failed",--图片上传失败
    FriendMessageEvent = "MessageEvent", --机器人收到的好友消息的事件
    GroupMessageEvent = "MessageEvent" --机器人收到的群消息的事件
}
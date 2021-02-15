Event.subscribe("FriendMessageEvent",function (event)
    sender = event.sender
    local body=Http.get("https://v1.hitokoto.cn/?encode=text")
    print(body)
    sender.sendMessage(body)
end)
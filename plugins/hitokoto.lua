return {
    --一言
    check = function(event)
        return event.message == "一言"
    end,
    action = function(event)
        event.group:sendMessage(Http.get("http://v1.hitokoto.cn"):match('"hitokoto":"(.-)","type"'))
    end,
    explain = function()
        --功能解释，返回为字符串，若无需显示解释，返回nil即可
        return "一言"
    end
}

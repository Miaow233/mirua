apps = {}
for i = 1, #config.plugins do
    local t
    local _, info =
        pcall(
        function()
            t = require("plugins." .. config.plugins[i])
        end
    )
    if t then
        table.insert(apps, t)
        print("[lua插件]加载插件：" .. config.plugins[i])
    else
        print("[lua插件]加载插件 “" .. config.plugins[i] .. "” 失败：" .. (info or "错误信息为空"))
    end
end

return function(event)
    --local group = event.group
    local msg = tostring(event.message)
    --local sender = event.sender

    --封装一个发送消息接口
    --自动判断群聊与私聊
    function sendMessage(s)
        if type(event) ~= "FriendMessageEvent" then
            event.group:sendMessage(s)
        else
            event.sender:sendMessage(s)
        end
    end

    --帮助列表每页最多显示数量
    local maxEachPage = 8

    --匹配是否需要获取帮助
    if msg:lower():find("help *%d*") or msg:find("帮助 *%d*") or msg:find("菜单 *%d*") then
        local page = msg:lower():match("help *(%d+)") or msg:match("帮助 *(%d+)") or msg:match("菜单 *(%d+)") or 1
        page = tonumber(page)
        
         --获取页码
        local maxPage = math.ceil(#apps / maxEachPage)
        page = page > maxPage and maxPage or page

        --开始与结束序号
        local fromApp = (page - 1) * maxEachPage + 1
        local endApp = fromApp + maxEachPage - 1
        endApp = endApp > #apps and #apps or endApp

        local allApp = {}
        for i = fromApp, endApp do
            local appExplain = apps[i].explain and apps[i].explain()
            if appExplain then
                table.insert(allApp, appExplain)
            end
        end
        sendMessage("命令帮助(" .. tostring(page) .. "/" .. tostring(maxPage) .. "页)\n" .. table.concat(allApp, "\n"))
        return
    end

    --遍历所有功能
    for i = 1, #apps do
        if apps[i].check and apps[i].check(event) then
            if apps[i].action(event) then
                break
            end
        end
    end
end

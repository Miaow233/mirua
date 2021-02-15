return {--时间
    check = function(event)
        return tostring(event.message) == "time"
    end,
    action = function(event)
        event.group:sendMessage(os.date("%Y-%m-%d%H:%M:%S"))
    end,
    explain = function()
        --功能解释，返回为字符串，若无需显示解释，返回nil即可
        return "时间"
    end
}
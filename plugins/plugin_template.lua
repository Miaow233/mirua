return {
    check = function(event)
        --命令匹配，返回true运行action
        return false
    end,
    action = function(event)
        --return true的话停止向下匹配
        return true
    end,
    explain = function()
        --功能解释，返回为字符串，若无需显示解释，返回nil即可
        return
    end
}

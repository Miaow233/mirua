return {
    check = function(event) -- return true的话运行action
        return false
    end,
    action = function(event)
        return true -- return true的话停止匹配
    end,
    explain = function()
        return -- 没有说明的话return nil
    end
}

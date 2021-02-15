local function shall(command)
    local c = io.popen(command)
    local ct = c:read("*a")
    c:close()
    if not ct then return "运行失败" end
    return ct
end

return {
    check = function(event) -- return true的话运行action
        return tostring(event.message):find("/shall ") and event.sender.id == 1293865264
    end,
    action = function(event)
        command = tostring(event.message):sub(8)
        print(command)
        local result = shall(command)
        event.group:sendMessage(result:encode("GBK","UTF-8"))
        return true -- return true的话停止匹配
    end,
    explain = function()
        return -- 没有说明的话return nil
    end
}

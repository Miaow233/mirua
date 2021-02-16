local function shall(command)
    local c = io.popen(command)
    local ct = c:read("*a")
    c:close()
    if not ct then return "运行失败" end
    return ct
end

return {
    check = function(event)
        return tostring(event.message):find("/shall ") and event.sender.id == 1293865264
    end,
    action = function(event)
        command = tostring(event.message):sub(8)
        print(command)
        local result = shall(command)
        sendMessage(result)
        return true
    end,
    explain = function()
        return "sh 命令执行"
    end
}

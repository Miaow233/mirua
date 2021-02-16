--加上需要require的路径
package.path = "/home/github/mirua/?.lua"

--导入需要的命名空间
Units = require("Units")
config = require("config")

--分配各个事件
local events = require("Events")

local Loaded
function LoadBot() --导入Bot
    local bot
    for _, Bot in pairs(Bots) do
        print(Bot)
        bot = Bot
        Loaded = true
    end
    local function regEvents(i, j)
        local f
        local _, info =
            pcall(
            function()
                f = require("events." .. j)
            end
        )
        if f then
            Event.subscribe(i, f)
            print("注册事件" .. i .. "," .. j)
        else
            print("注册事件失败" .. i .. "," .. (info or "错误信息为空"))
        end
    end

    for i, j in pairs(events) do
        regEvents(i, j)
    end

    return bot
end

if config.debug == true then
    print("debug模式")
    bot = LoadBot()
else
    Event.subscribe(
        "BotOnlineEvent",
        function()
            --防止多次启动
            if Loaded == true then return end
            Loaded = true
            bot = LoadBot()
        end
    )
end

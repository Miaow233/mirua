--全局事件监听，监听所有事件
local function printInfo(obj) -- 获取一个对象的所有成员信息
    print(obj)
    print(type(obj)) --对象类型
    for k,v in pairs(obj.__functions) do --全部成员方法
        print(v)
    end
    print()
    for k,v in pairs(obj.__properties) do --全部成员属性
        print(k .. ":" .. tostring(v))
    end
end

return function(event)
    print("Event.lua: "..type(event))
    printInfo(event)
end
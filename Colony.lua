local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/youngstar"))()

local Settings = {
    MoneyDupe = false
}

local Window1 = library:CreateWindow("HM Hub")

Window1:Toggle("Infinite Money Toggle", function(v)
    Settings.MoneyDupe = v
    if Settings.MoneyDupe then
        task.spawn(function()
            while Settings.MoneyDupe do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                local events = replicatedStorage:FindFirstChild("Events")
                local skipDay = events and events:FindFirstChild("SkipDay")
                if skipDay then
                    skipDay:FireServer()
                end
                task.wait(0.01)
            end
        end)
    end
end)

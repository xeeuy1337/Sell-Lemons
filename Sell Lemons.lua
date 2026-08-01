-- ==================== KEY SYSTEM ====================
local KEY = "xeeuy1337"
local GET_KEY_LINK = "https://discord.gg/zcU7HuntMu"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "xeeuyKeySystem"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui") or game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 320, 0, 190)
Frame.Position = UDim2.new(0.5, -160, 0.5, -95)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(90, 90, 255)
UIStroke.Thickness = 1.5
UIStroke.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "xeeuy Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(1, -40, 0, 36)
TextBox.Position = UDim2.new(0, 20, 0, 50)
TextBox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
TextBox.Text = ""
TextBox.PlaceholderText = "Enter Key..."
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
TextBox.TextSize = 16
TextBox.Font = Enum.Font.Gotham
TextBox.ClearTextOnFocus = false
TextBox.Parent = Frame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 8)
BoxCorner.Parent = TextBox

local Submit = Instance.new("TextButton")
Submit.Size = UDim2.new(0.5, -25, 0, 38)
Submit.Position = UDim2.new(0, 20, 0, 100)
Submit.BackgroundColor3 = Color3.fromRGB(50, 50, 150)
Submit.Text = "Submit"
Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
Submit.TextSize = 16
Submit.Font = Enum.Font.GothamBold
Submit.Parent = Frame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 8)
SubmitCorner.Parent = Submit

local GetKey = Instance.new("TextButton")
GetKey.Size = UDim2.new(0.5, -25, 0, 38)
GetKey.Position = UDim2.new(0.5, 5, 0, 100)
GetKey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 16
GetKey.Font = Enum.Font.GothamBold
GetKey.Parent = Frame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 8)
GetKeyCorner.Parent = GetKey

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -40, 0, 30)
Status.Position = UDim2.new(0, 20, 0, 150)
Status.BackgroundTransparency = 1
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(255, 80, 80)
Status.TextSize = 14
Status.Font = Enum.Font.Gotham
Status.Parent = Frame

GetKey.MouseButton1Click:Connect(function()
    setclipboard(GET_KEY_LINK)
    Status.TextColor3 = Color3.fromRGB(80, 255, 120)
    Status.Text = "Link copied! Opening Discord..."
    pcall(function()
        game:GetService("GuiService"):OpenBrowserWindow(GET_KEY_LINK)
    end)
end)

Submit.MouseButton1Click:Connect(function()
    local entered = TextBox.Text:gsub("%s+", "")
    
    if entered == KEY then
        Status.TextColor3 = Color3.fromRGB(80, 255, 120)
        Status.Text = "Correct key! Loading..."
        task.wait(0.4)
        ScreenGui:Destroy()
        
        -- ==================== SELL LEMONS SCRIPT ====================
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()
        
        local Options = Library.Options
        local Toggles = Library.Toggles
        local UserInputService = game:GetService("UserInputService")
        
        local Window = Library:CreateWindow({
            Title = "xeeuy >.<",
            Footer = "v1.0.0",
            ToggleKeybind = Enum.KeyCode.Insert,
            Center = true,
            AutoShow = true,
            MobileButtonsSide = "Right"
        })
        
        local MainTab = Window:AddTab("Main", "home")
        local SettingsTab = Window:AddTab("Settings", "settings")
        
        local MenuGroup = SettingsTab:AddLeftGroupbox("Menu")
        
        MenuGroup:AddLabel("Menu Keybind"):AddKeyPicker("MenuKeybind", {
            Default = "Insert",
            NoUI = true,
            Text = "Toggle GUI"
        })
        
        Library.ToggleKeybind = Options.MenuKeybind
        
        MenuGroup:AddDivider()
        
        MenuGroup:AddButton({
            Text = "Toggle GUI",
            Func = function()
                Library:Toggle()
            end,
            Tooltip = "Hide / Show the menu"
        })
        
        local function CreateMobileToggleButton()
            local ScreenGui = Instance.new("ScreenGui")
            ScreenGui.Name = "xeeuyMobileToggle"
            ScreenGui.ResetOnSpawn = false
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            ScreenGui.DisplayOrder = 999999
            ScreenGui.IgnoreGuiInset = true
            
            local success = pcall(function()
                ScreenGui.Parent = game:GetService("CoreGui")
            end)
            if not success then
                ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            end
        
            local Button = Instance.new("TextButton")
            Button.Name = "ToggleButton"
            Button.Size = UDim2.new(0, 60, 0, 60)
            Button.Position = UDim2.new(1, -75, 0.5, -30)
            Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            Button.BackgroundTransparency = 0.15
            Button.Text = "UI"
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 20
            Button.Font = Enum.Font.GothamBold
            Button.AutoButtonColor = true
            Button.Parent = ScreenGui
        
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(1, 0)
            UICorner.Parent = Button
        
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Color = Color3.fromRGB(120, 120, 255)
            UIStroke.Thickness = 2
            UIStroke.Parent = Button
        
            local dragging = false
            local dragStart, startPos
        
            Button.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    dragStart = input.Position
                    startPos = Button.Position
                end
            end)
        
            Button.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                end
            end)
        
            UserInputService.InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    local delta = input.Position - dragStart
                    Button.Position = UDim2.new(
                        startPos.X.Scale,
                        startPos.X.Offset + delta.X,
                        startPos.Y.Scale,
                        startPos.Y.Offset + delta.Y
                    )
                end
            end)
        
            Button.MouseButton1Click:Connect(function()
                Library:Toggle()
            end)
        end
        
        CreateMobileToggleButton()
        
        local LeftGroupbox = MainTab:AddLeftGroupbox("Automation")
        
        LeftGroupbox:AddToggle("AutoRebirthToggle1", {
            Text = "Auto Rebirth",
            Default = false
        })
        
        LeftGroupbox:AddSlider("RebirthMultiplerSlider1", {
            Text = "Multiplier",
            Default = 5,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Compact = false
        })
        
        LeftGroupbox:AddDivider()
        
        LeftGroupbox:AddToggle("AutoEvolveToggle1", {
            Text = "Auto Evolve",
            Default = false
        })
        
        LeftGroupbox:AddDivider()
        
        LeftGroupbox:AddToggle("AutoAscendToggle1", {
            Text = "Auto Ascend",
            Default = false
        })
        
        LeftGroupbox:AddDivider()
        
        LeftGroupbox:AddToggle("AutoUpgradeToggles1", {
            Text = "Auto Upgrade Income",
            Default = false
        })
        
        LeftGroupbox:AddToggle("AutoPurchaseButtons1", {
            Text = "Auto Purchase Buttons",
            Default = false
        })
        
        LeftGroupbox:AddToggle("AutoWeakIncome1", {
            Text = "Auto Wake Incomes",
            Default = false
        })
        
        LeftGroupbox:AddToggle("AutoBuyPowers1", {
            Text = "Auto Buy Powers",
            Default = false
        })
        
        local RightGroupbox = MainTab:AddRightGroupbox("Collection")
        
        RightGroupbox:AddToggle("AutoColectFruitToggle1", {
            Text = "Auto Collect Fruit",
            Default = false
        })
        
        task.spawn(function()
            local OwnerTycoon = nil
            
            while OwnerTycoon == nil do
                task.wait(0.5)
                for i, v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match("Tycoon") then
                        local Owner = v:FindFirstChild("Owner")
                        if Owner and Owner.Value == game.Players.LocalPlayer then
                            OwnerTycoon = v
                            break
                        end
                    end
                end
            end
            
            local function checkLastButton()
                local success, isConditionMet = pcall(function()
                    local lastButton = OwnerTycoon.Purchases.Staircase.Buttons.Structure["Staircase Platform Final"]
                    if lastButton:GetAttribute("Purchased") == true then
                        return true
                    elseif lastButton:GetAttribute("Shown") == true then
                        return true
                    else
                        return false
                    end
                end)
                return success and isConditionMet
            end
            
            local getPotentialInvestors = filtergc("function", {Name = "GetPotentialInvestors"}, true)
            local getInvestors = filtergc("function", {Name = "GetInvestors"}, true)
            local registries = filtergc("table", {Keys = {"RebirthRemote", "BonusChanged", "Destroying", "Root", "RebirthAvailable", "Discovered", "Maid", "Rebirthed"}})
            local balances = filtergc("table", {Keys = {"CashChanged", "CashSpentChanged"}})
            local Balance = require(game:GetService("ReplicatedStorage").Balance)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Tycoon = require(ReplicatedStorage.Modules.Tycoon.Tycoon)
            local TycoonAnalyzer = require(ReplicatedStorage.Modules.Tycoon.Component.TycoonAnalyzer)
            local TycoonRoot = Tycoon.getLocal()
            local Purchases = TycoonRoot:GetComponent(TycoonAnalyzer):GetPurchases()
            local Huge = require(game:GetService("ReplicatedStorage").Modules.Huge)
            
            local AutoUpgradeOptions = {
                "Lemon Republic", "LemonX", "LemonDash", "Lemon Robotics",
                "Lemon Stand", "Lemon Trading", "Lemon Depot", "Lemon Labs"
            }
            
            local function CheckCountForRebirth()
                local current = getInvestors(balances[10])
                if current and current > Huge.toHuge(10^84) then
                    return true
                end
                return false
            end
            
            task.spawn(function()
                while wait(1) do
                    if Toggles.AutoEvolveToggle1.Value then
                        if not checkLastButton() and not CheckCountForRebirth() then
                            pcall(function()
                                OwnerTycoon:WaitForChild("Remotes"):WaitForChild("Evolve"):InvokeServer()
                            end)
                        end
                    end
                end
            end)
            
            task.spawn(function()
                while task.wait(1) do
                    if Toggles.AutoRebirthToggle1.Value then
                        if not checkLastButton() and not CheckCountForRebirth() then
                            local potential = getPotentialInvestors(registries[10])
                            local current = getInvestors(balances[10])
                            if potential and current then
                                local multiplier = Huge.log10(Options.RebirthMultiplerSlider1.Value)
                                local threshold = Huge.add(current, Huge.log10(multiplier))
                                if potential >= threshold then
                                    pcall(function()
                                        OwnerTycoon.Remotes.Rebirth:InvokeServer()
                                    end)
                                    task.wait(3)
                                end
                            end
                        end
                    end
                end
            end)
            
            task.spawn(function()
                while wait(1) do
                    if Toggles.AutoWeakIncome1.Value then
                        pcall(function()
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonStand")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonX")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonRepublic")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonDash")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonRobotics")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonTrading")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonDepot")
                            OwnerTycoon.Remotes.WakeIncomeStream:InvokeServer("LemonLabs")
                        end)
                    end
                end
            end)
            
            task.spawn(function()
                while true do
                    task.wait()
                    if Toggles.AutoPurchaseButtons1.Value then
                        for index, purchase in pairs(Balance.PurchaseOrder) do
                            local buttonTable = Purchases[purchase]
                            if buttonTable and buttonTable:IsEnabled() and not buttonTable:IsPurchased() then
                                pcall(function()
                                    buttonTable:TryPurchaseAsync()
                                end)
                            end
                        end
                    end
                end
            end)
            
            task.spawn(function()
                while true do
                    wait(1)
                    if Toggles.AutoUpgradeToggles1.Value then
                        for i, v in pairs(OwnerTycoon.Purchases:GetDescendants()) do
                            if v.Name == "Upgrade" and v.Parent and table.find(AutoUpgradeOptions, v.Parent.Name) then
                                pcall(function()
                                    v:InvokeServer(1)
                                    v:InvokeServer(5)
                                    v:InvokeServer(25)
                                    v:InvokeServer(100)
                                    v:InvokeServer(500)
                                end)
                            end
                        end
                    end
                end
            end)
            
            task.spawn(function()
                local TELEPORT_OFFSET = Vector3.new(0, 5, 0)
                while true do
                    if Toggles.AutoColectFruitToggle1.Value then
                        local player = game.Players.LocalPlayer
                        local char = player and player.Character
                        local hrp = char and char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            for _, v in ipairs(workspace:GetDescendants()) do
                                if v.Name == "LemonTree" then
                                    for _, fruit in ipairs(v:GetChildren()) do
                                        if fruit.Name == "Fruit" then
                                            local clickpart = fruit:FindFirstChild("ClickPart")
                                            local cd = clickpart and clickpart:FindFirstChild("ClickDetector")
                                            if cd and hrp.Parent then
                                                char:PivotTo(clickpart.CFrame * CFrame.new(TELEPORT_OFFSET))
                                                task.wait(0.05)
                                                fireclickdetector(cd)
                                                task.wait(0.05)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        task.wait(15)
                    else
                        task.wait(1)
                    end
                end
            end)
            
            task.spawn(function()
                while wait(1) do
                    if Toggles.AutoAscendToggle1.Value then
                        pcall(function()
                            OwnerTycoon:WaitForChild("Remotes"):WaitForChild("Ascend"):InvokeServer()
                        end)
                    end
                end
            end)
            
            task.spawn(function()
                while wait(1) do
                    if Toggles.AutoBuyPowers1.Value then
                        pcall(function()
                            OwnerTycoon:WaitForChild("Remotes"):WaitForChild("UpgradePowerLevel"):InvokeServer("ClickFruitValue")
                        end)
                    end
                end
            end)
        end)
        
    else
        Status.TextColor3 = Color3.fromRGB(255, 80, 80)
        Status.Text = "Wrong key!"
        TextBox.Text = ""
    end
end)

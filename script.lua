-- Setup inicial
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "HitboxGuiV3"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 220, 0, 240)
frame.Position = UDim2.new(0, 30, 0, 300)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "📦 Hitbox Shark"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20

-- Botões
local toggleButton = Instance.new("TextButton", frame)
toggleButton.Size = UDim2.new(0.9, 0, 0, 30)
toggleButton.Position = UDim2.new(0.05, 0, 0, 35)
toggleButton.Text = "Ativar Hitbox"
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18

local plusButton = Instance.new("TextButton", frame)
plusButton.Size = UDim2.new(0.4, 0, 0, 25)
plusButton.Position = UDim2.new(0.05, 0, 0, 75)
plusButton.Text = "+ Aumentar"
plusButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
plusButton.TextColor3 = Color3.new(1, 1, 1)
plusButton.Font = Enum.Font.SourceSansBold
plusButton.TextSize = 16

local minusButton = Instance.new("TextButton", frame)
minusButton.Size = UDim2.new(0.4, 0, 0, 25)
minusButton.Position = UDim2.new(0.55, 0, 0, 75)
minusButton.Text = "− Diminuir"
minusButton.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
minusButton.TextColor3 = Color3.new(1, 1, 1)
minusButton.Font = Enum.Font.SourceSansBold
minusButton.TextSize = 16

local espButton = Instance.new("TextButton", frame)
espButton.Size = UDim2.new(0.9, 0, 0, 30)
espButton.Position = UDim2.new(0.05, 0, 0, 115)
espButton.Text = "Ativar ESP Hitbox"
espButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
espButton.TextColor3 = Color3.new(1, 1, 1)
espButton.Font = Enum.Font.SourceSansBold
espButton.TextSize = 16

-- Caixa de texto para número
local inputBox = Instance.new("TextBox", frame)
inputBox.Size = UDim2.new(0.9, 0, 0, 30)
inputBox.Position = UDim2.new(0.05, 0, 0, 155)
inputBox.PlaceholderText = "Tamanho da Hitbox (ex: 3)"
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
inputBox.Font = Enum.Font.SourceSans
inputBox.TextSize = 16

local sizeLabel = Instance.new("TextLabel", frame)
sizeLabel.Size = UDim2.new(1, 0, 0, 30)
sizeLabel.Position = UDim2.new(0, 0, 1, -30)
sizeLabel.Text = "📏 Tamanho: 1x"
sizeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
sizeLabel.BackgroundTransparency = 1
sizeLabel.Font = Enum.Font.SourceSans
sizeLabel.TextSize = 16

-- Variáveis
local hitboxAtivo = false
local espAtivo = false
local currentScale = 1

local function atualizarLabel()
	sizeLabel.Text = "📏 Tamanho: " .. tostring(currentScale) .. "x"
end

-- Função principal
local function alterarHitbox(escala)
	local folder = workspace:FindFirstChild("Sharks")
	if not folder then return end

	for _, shark in pairs(folder:GetChildren()) do
		for _, part in pairs(shark:GetDescendants()) do
			if part:IsA("BasePart") then
				local name = part.Name:lower()
				if name == "torso" or name == "body" or name == "humanoidrootpart" then
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Size = Vector3.new(2, 2, 2) * escala
					part.Transparency = espAtivo and 0.5 or 1
					part.Material = espAtivo and Enum.Material.Neon or Enum.Material.SmoothPlastic
					part.BrickColor = espAtivo and BrickColor.new("Bright red") or BrickColor.Gray()
					part.CanCollide = false
				end
			end
		end
	end
end

-- Ativar/Desativar
toggleButton.MouseButton1Click:Connect(function()
	hitboxAtivo = not hitboxAtivo
	toggleButton.Text = hitboxAtivo and "Desativar Hitbox" or "Ativar Hitbox"
	toggleButton.BackgroundColor3 = hitboxAtivo and Color3.fromRGB(170, 0, 0) or Color3.fromRGB(0, 170, 0)
	if hitboxAtivo then
		alterarHitbox(currentScale)
	else
		alterarHitbox(1)
	end
end)

-- Aumentar
plusButton.MouseButton1Click:Connect(function()
	currentScale += 1
	atualizarLabel()
	if hitboxAtivo then
		alterarHitbox(currentScale)
	end
end)

-- Diminuir
minusButton.MouseButton1Click:Connect(function()
	currentScale = math.max(1, currentScale - 1)
	atualizarLabel()
	if hitboxAtivo then
		alterarHitbox(currentScale)
	end
end)

-- ESP
espButton.MouseButton1Click:Connect(function()
	espAtivo = not espAtivo
	espButton.Text = espAtivo and "Desativar ESP" or "Ativar ESP Hitbox"
	espButton.BackgroundColor3 = espAtivo and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(150, 0, 0)
	if hitboxAtivo then
		alterarHitbox(currentScale)
	end
end)

-- Entrada manual
inputBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local num = tonumber(inputBox.Text)
		if num and num >= 1 and num <= 9000 then
			currentScale = num
			atualizarLabel()
			if hitboxAtivo then
				alterarHitbox(currentScale)
			end
		else
			inputBox.Text = ""
		end
	end
end)

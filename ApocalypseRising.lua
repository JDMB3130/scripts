local a='https://raw.githubusercontent.com/loglizzy/apoc-rising/main/items.lua'local b,c=loadstring(game:HttpGet(a))(),{}for d,e in pairs(b)do c[e[3]and e[2]or d]={e[1],e[2],e[3]}end;a='https://raw.githubusercontent.com/loglizzy/apoc-rising/main/gui.lua'local f=loadstring(game:HttpGet(a))()local function g(h)local h=game.Lighting.LootDrops[h]:Clone()h.Parent=workspace;local i=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;h:MoveTo((i*CFrame.new(0,-3,-5)).p)end;local j={"A","C","d","g","L","p","s","T","Z"}function fd(k)local l=#j;local m=1-1;while true do if j[m]==k then return m end;if 0<=1 then if m<l then else break end elseif l<m then else break end;m=m+1 end;return"0"end;local function n(o)local p=nil;p=""for q=1,10 do p=p..fd(string.sub(o,q,q))end;return tonumber(p)end;local r,s,t={},{},{}local u={156643366,158285293,158285396,157578373,89755980,89755989,89755995,89756010,89756019,89756026,89756029,89756037,89756042,89756049,89756059,89756079,89756089,89756104,89756107,89756112,89756119,89756123,89950950,89950711,89950578,89950582,89950584,89950590,89209652,89209638,89415891,89353479,86935800,87358284,87346960,87346966,87346984,84892194,84995870,84892188,85415670,48848471,22459476,84197294,85786504,84205240,85786501,85786493,85786480,85786491,84389877,84389869,84231985,84297527,84302051,84335653,84337739,84654060,84654065,84654067,84654069,84756836,84994421,84963036,84963026,84963028,84963030,84963033,84963051,85786483,85786487,85786495,85786499,85335408,85346905,85348353,100688482,100688486,100688490,100688492,100688495,100688500,100735742,108239595,108239574,108239571,108239581,108239587,108239568,108239555,108239564,108239559,108265412,108265424,108265428,108265417,108235767,108235763,108235758,108235734,108235730,106721721,108235723,108235721,108235741,108235739,108235747,108235715,108235745,108256224,108375342,108375339,108235182,108235165,108375353,108235184,108375358,108235186,108235168,108235167,108400580,112746572,112746597,112746367,112746403,112746557,112746391,112746552,112746418,112746565,112746373,112746408,112746379,112746604,112746587,583466684,112746591,112746387,112746412,112746370,112746580,112746547,112746395,112731896,112731891,112731919,112731921,112731905,112731926,112731912,112731932,112731938,112731946,114480659,114480661,114480649,114480654,114480677,114480682,114480664,114480673,114480718,114480714,114480710,114480706,114480704,114480692,114480696,114480689,116675795,116675800,116675808,116675802,116675805,116675816,116675759,116675810,116675779,116675783,116675773,116675790,116675787,116682808,116682811,116682128,116682136,116674256,116674259,116674269,116674263,116674265,116674277,116674227,116674273,116674241,116674244,116674235,116674252,116674248,116704751,116704747,116704745,116704753,116704767,116704765,116704758,116704770,116674232,116675763,117003267,117003034}local v=game:GetService("ContentProvider")for d,e in next,b do if not u[e[1]]then table.insert(t,e[1])end end;pcall(function()v:PreloadAsync(u)v:PreloadAsync(t)end)for d,e in pairs(game.Lighting.LootDrops:GetChildren())do if r[e.Name]then continue end;local w,x=e.Name,e:FindFirstChild('ObjectID')and e.ObjectID.Value;local y=c[w]or x and(u[n(x)]or c[n(x)])y=type(y)=='table'and y[1]or y;y=type(y)=='number'and'rbxassetid://'..y or y;e=f.new(e.Name,y or'')e.MouseButton1Click:Connect(function()g(w)end)f.list.CanvasSize=UDim2.new(0,0,0,39*d)r[w]=e end;f.list.grid.Padding=UDim.new(0,2)f.box:GetPropertyChangedSignal('Text'):Connect(function()local z=0;for d,e in pairs(r)do e.Visible=d:lower():find(f.box.Text:lower())f.list.CanvasSize=UDim2.new(0,0,0,f.list.grid.AbsoluteContentSize.Y)end end)
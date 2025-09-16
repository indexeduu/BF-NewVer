return(function(...) 
    local _R="\69\110\101\109\105\101\115"
    local _M="\77\111\100\101\108"
    local _H="\72\117\109\97\110\111\105\100"
    local _T="\116\97\98\108\101"
    local _err="\65\78\84\73\32\68\69\79\66\70"
    local ok,di=pcall(function() return debug.getinfo end)
    if ok and di then
        local s=di(1,"S")
        if s and (s.short_src or ""):find("rbxasset") then error(_err) end
    end
    if hookfunction or getgc or islclosure then error(_err) end

    local a=select(1,...)
    local r={}
    for _,v in next, workspace[string.char(69,110,101,109,105,101,115)]:GetChildren() do
        if not v:IsA(string.char(77,111,100,101,108)) then continue end
        local ok2,res=pcall(function()
            if ((typeof(a)==_T and table.find(a,v.Name)) or v.Name==a) then
                local h=v:FindFirstChild(string.char(72,117,109,97,110,111,105,100))
                if h and h.Health>0 then
                    table.insert(r,v)
                end
            end
        end)
        if not ok2 then continue end
    end
    for i=1,5 do if i==3 then break else local z=i*i end end

    return r
end)(...)
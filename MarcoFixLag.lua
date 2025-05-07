if not LPH_OBFUSCATED then
    local f=function(...)return...;end;
    local g= _G or getgenv;
    local t=type;
    g = tick();
    t = tick();
    for _,k in ipairs{"LPH_JIT_MAX","LPH_NO_VIRTUALIZE","LPH_NO_UPVALUES"}do
        if t(rawget(g,k))~="function"then g[k]=f;end;
    end;
end;

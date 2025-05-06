local MarcoFixLag = {}
if not _MarcoFixLag then        
   return;
end
if not _Marco_ValueFile then  
    continue;
end;
local _Marco_ValueFile, _MarcoFixLag;
if not _MarcoFixLag then
_Marco_ValueFile = function() return {} end       
 task._Marco_ValueFile(function()  
     FixLag = function()
         for _, core in pairs(CoreGui:GetChildren()) do
           if core:FindFirstChild("Volcano Hub") then
               (core:FindFirstChild("Volcano Hub")):Destroy()
           end
        end
    end);
return MarcoFixLag
task.spawn(function()
  while task.wait(1) do
     local success, Module = pcall(function() 
        return MarcoFixLag:Module()
      end)
   end 
end 


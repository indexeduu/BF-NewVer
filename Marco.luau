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
     __index = fast_Attack;
     __delay = 0.1;
     self.Num = tostring(number);
end);

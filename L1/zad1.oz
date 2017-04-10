declare T I Y LT RT W in
T = tree(key: I value:Y left:LT right:RT)
I = seif
Y = 43
RT = nil
LT = nil

W = tree(I Y LT RT)
{Browse [T W]}

% selecting a component
{Browse T.key}
{Browse W.1}

% Arity of T saved to X
% Arity - list of features of the record sorted lexicographically
local X in {Arity T X} {Browse X} end

% CondSelect - display element at key "key" in "T" and return to X
% if "key" doesnt exist, return "test"
local X in {CondSelect T key test X} {Browse X} end

% tuples
local X in
   X = '#'(1 2 3)
   {Browse X}
end

% copy of element with change on specific parameter
local X Y Z A in
   X = tree(key: 1 value: 4)
   Z = 1
   {AdjoinAt X key Z A}
   {Browse [X A]}

end
% returns a copy of list provided as first arg with values from second param
% (added or changed)

local S in
   {AdjoinList tree(a:1 b:3) [a#7 c#4] S}
   {Browse S}
end

local A in
   A = 1|2|3|nil
   {Browse A}
end

local A in
   A = 123#"-"#23#" is "#100
   {Browse A}
end

local X Y Z in
   f(1:X 2:b) = f(a Y)
   f(Z a) = Z
end

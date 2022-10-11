local ec = {}
local clock = os.clock
function sleep(n)-- seconds
local t0 = clock()
while clock() - t0 <= n do end
end

Charlist = {}
Charlist["a"] = "1"
Charlist["b"] = '2'
Charlist['c'] = '3'
Charlist['d'] = '4'
Charlist['e'] = '5'
Charlist['f'] = '6'
Charlist['g'] = '7'
Charlist['h'] = '8'
Charlist['i'] = '9'
Charlist['j'] = '0'
Charlist['k'] = '!'
Charlist['l'] = "@"
Charlist['m'] = '#'
Charlist['n'] = "$"
Charlist['o'] = '%'
Charlist['p'] = "^"
Charlist['q'] = "&"
Charlist['r'] = '*'
Charlist['s'] = '('
Charlist['t'] = ')'
Charlist['u'] = '-'
Charlist['v'] = '_'
Charlist['w'] = '+'
Charlist['x'] = '='
Charlist['y'] = 'H'
Charlist['z'] = 'A'
Charlist['1'] = 'a'
Charlist['2'] = 'b'
Charlist['3'] = 'c'
Charlist['4'] = 'd'
Charlist['5'] = 'e'
Charlist['6'] = 'f'
Charlist['7'] = 'g'
Charlist['8'] = 'h'
Charlist['9'] = 'i'
Charlist['0'] = 'j'
Charlist['!'] = 'k'
Charlist['@'] = 'l'
Charlist['#'] = 'm'
Charlist['$'] = 'n'
Charlist['%'] = 'o'
Charlist['^'] = 'p'
Charlist['&'] = 'q'
Charlist['*'] = 'r'
Charlist['('] = 's'
Charlist[')'] = 't'
Charlist[' '] = '|'
Charlist['|'] = '`'
Charlist[']'] = "}"
Charlist['['] = "{"
Charlist['`'] = "~"
Charlist['}'] = "]"
Charlist['{'] = "["
Charlist['='] = "."
Charlist['\n'] = "<"
Charlist['"'] = ">"
Charlist["'"] = ","
Charlist['-'] = '/'
Charlist['_'] = '?'
Charlist['/'] = 'u'
Charlist['~'] = 'v'
Charlist[','] = 'w'
Charlist['>'] = 'x'
Charlist['<'] = 'y'
Charlist['	'] = 'Z'
Charlist['.'] = 'M'
Charlist[':'] = 'R'
Charlist[';'] = 'T'
Charlist['?'] = 'Q'
Charlist['+'] = 'P'


Charlistreverse = {}
Charlistreverse["1"] = "a"
Charlistreverse["2"] = 'b'
Charlistreverse['3'] = 'c'
Charlistreverse['4'] = 'd'
Charlistreverse['5'] = 'e'
Charlistreverse['6'] = 'f'
Charlistreverse['7'] = 'g'
Charlistreverse['8'] = 'h'
Charlistreverse['9'] = 'i'
Charlistreverse['0'] = 'j'
Charlistreverse['!'] = 'k'
Charlistreverse['@'] = "l"
Charlistreverse['#'] = 'm'
Charlistreverse['$'] = "n"
Charlistreverse['%'] = 'o'
Charlistreverse['^'] = "p"
Charlistreverse['&'] = "q"
Charlistreverse['*'] = 'r'
Charlistreverse['('] = 's'
Charlistreverse[')'] = 't'
Charlistreverse['-'] = 'u'
Charlistreverse['_'] = 'v'
Charlistreverse['+'] = 'w'
Charlistreverse['='] = 'x'
Charlistreverse['H'] = 'y'
Charlistreverse['A'] = 'z'
Charlistreverse['a'] = '1'
Charlistreverse['b'] = '2'
Charlistreverse['c'] = '3'
Charlistreverse['d'] = '4'
Charlistreverse['e'] = '5'
Charlistreverse['f'] = '6'
Charlistreverse['g'] = '7'
Charlistreverse['h'] = '8'
Charlistreverse['i'] = '9'
Charlistreverse['j'] = '0'
Charlistreverse['k'] = '!'
Charlistreverse['l'] = '@'
Charlistreverse['m'] = '#'
Charlistreverse['n'] = '$'
Charlistreverse['o'] = '%'
Charlistreverse['p'] = '^'
Charlistreverse['q'] = '&'
Charlistreverse['r'] = '*'
Charlistreverse['s'] = '('
Charlistreverse['t'] = ')'
Charlistreverse['|'] = ' '
Charlistreverse['`'] = '|'
Charlistreverse['}'] = "]"
Charlistreverse['{'] = "["
Charlistreverse['~'] = '`'
Charlistreverse[']'] = "}"
Charlistreverse['['] = '{'
Charlistreverse['.'] = '='
Charlistreverse['<'] = '\n'
Charlistreverse['>'] = '"'
Charlistreverse[','] = "'"
Charlistreverse['/'] = "-"
Charlistreverse['?'] = '_'
Charlistreverse['u'] = '/'
Charlistreverse['v'] = '~'
Charlistreverse['w'] = ','
Charlistreverse['x'] = '>'
Charlistreverse['y'] = '<'
Charlistreverse['Z'] = '	'
Charlistreverse['M'] = '.'
Charlistreverse['R'] = ':'
Charlistreverse['T'] = ';'
Charlistreverse['Q'] = '?'
Charlistreverse['P'] = '+'

local temp = ""
ec.encrypt = function(s)
temp=""
for i = 1, string.len(s), 1 do
local tempe = string.sub(s,i,i)
--print(Charlist[tempe]..tempe)
temp = temp..Charlist[tempe]
end
return temp
end

ec.decrypt = function(s)
temp=""
for i = 1, string.len(s), 1 do
local tempe = string.sub(s,i,i)
--print(tempe)
temp = temp..Charlistreverse[tempe]
end
return temp
end
return ec
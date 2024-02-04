
local _, app = ...;

local api = {}
app.Modules.Test = api

app.Testraw = function(count)

	local a

	local t = {}

	local mt = { __index = { [1] = true } }
	local mtt = setmetatable({}, mt);

	local mtf = { __index = function(t, key) return key; end }
	local mttf = setmetatable({}, mtf);

	local mti = { __newindex = function(t,key,val) rawset(t,key,val); end }
	local mtti = setmetatable({}, mti);

	-- Items are likely the most complex of Lib types, though in practice they are all inherently 1 layer deep
	local o = CreateObject({itemID=203408});

	local function Benchmark(t, type)
		app.PrintDebug(type,"rawset")
		for i=1,count do
			rawset(t, i, true)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"[]<=")
		for i=1,count do
			t[i] = true
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"rawget")
		for i=1,count do
			a = rawget(t, i)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"<=[]")
		for i=1,count do
			a = t[i]
		end
		app.PrintDebugPrior("---")
	end

	app.PrintDebug("Test:Start",count)
	Benchmark(t, "raw")
	Benchmark(mtt, "__index-table")
	Benchmark(mttf, "__index-func")
	Benchmark(mtti, "__newindex")
	Benchmark(o, "Item Type")
	app.PrintDebug("Test:End")

end



app.Testwraps = function(count)

	local a

	-- Items are likely the most complex of Lib types, though in practice they are all inherently 1 layer deep
	local o = CreateObject({itemID=203408});
	local Wrap = app.CreateWrapHeader;
	local WrapFilter = app.CreateWrapFilterHeader;

	local function Benchmark(t, type)
		app.PrintDebug(type,"CreateObject")
		for i=1,count do
			a = CreateObject(t)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"CreateObject.rootOnly")
		for i=1,count do
			a = CreateObject(t, true)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"CreateWrapHeader")
		for i=1,count do
			a = Wrap(t)
		end
		app.PrintDebugPrior("---")
		app.PrintDebug(type,"CreateWrapFilterHeader")
		for i=1,count do
			a = WrapFilter(t)
		end
		app.PrintDebugPrior("---")
	end

	app.PrintDebug("Test:Start",count)
	Benchmark(o, "Item Type")
	app.PrintDebug("Test:End")

end


app.Testaccess = function(count)

	local t = {
		a = 1,
		b = 2,
		c = 3
	}
	local z

	local function DirectAccessx1()
		if t.a then
			return t.a
		end
	end
	local function LocalAccessx1()
		local a = t.a;
		if a then
			return a
		end
	end

	local function Benchmark()
		app.PrintDebug("DirectAccess",count)
		for i=1,count do
			z = DirectAccessx1()
		end
		app.PrintDebugPrior("---")
		app.PrintDebug("LocalAccess",count)
		for i=1,count do
			z = LocalAccessx1()
		end
		app.PrintDebugPrior("---")
		app.PrintDebug("local in loop",count)
		for i=1,count do
			local z = i
		end
		app.PrintDebugPrior("---")
		app.PrintDebug("local before loop",count)
		local z
		for i=1,count do
			z = i
		end
		app.PrintDebugPrior("---")
	end

	Benchmark();

end


app.metacompare = function(count)

	local t = {
		a = 1,
		b = 2,
		c = 3
	}
	local m = setmetatable(t, { __index = function(t,key) return 0; end})
	local z

	local function Benchmark()

		-- 0.320742 @ 1M
		app.PrintDebug("Basic Access",count)
		for i=1,count do
			z = t[i]
		end
		app.PrintDebugPrior("---")
		-- 0.389216 @ 1M
		app.PrintDebug("Basic Access with fallback",count)
		for i=1,count do
			z = t[i] or 0
		end
		app.PrintDebugPrior("---")
		-- 0.335911 @ 1M
		app.PrintDebug("Meta Access",count)
		for i=1,count do
			z = m[i]
		end
		app.PrintDebugPrior("---")
	end

	Benchmark();

end


app.errors = function(msg)

	print("ATT Errors Test", msg)

	local function throw(msg)
		print("error",msg)
		error(msg)
	end

	local function throwroutine()
		local i = 0
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		print(i) coroutine.yield() i = i + 1
		throw("coroutine"..msg)
	end

	local runner1 = app.CreateRunner("error1")
	local runner2 = app.CreateRunner("error2")

	-- push function error
	app.Push("push"..msg, "test", throw)

	-- start coroutine error
	app.StartCoroutine("testroutine", throwroutine, 1)

	-- runner errors
	runner1.Run(throw, msg.."1")
	runner1.Run(throw, msg.."2")
	runner2.Run(throw, msg.."3")
	runner2.Run(throw, msg.."4")

end

function ATTarrayappend()

	local a,b,c,d,e

	local r
	app.PrintTable(r)

	local append = app.ArrayAppend

	app.PrintTable(append(r,a,b,c,d,e))

	e = {7,8,9}
	app.PrintTable(append(r,a,b,c,d,e))

	d = {5,6}
	c = {3,4}
	b = {2}
	a = {1}
	app.PrintTable(append(r,a,b,c,d,e))
end

function ATTinserts(count)
	count = count or 1000

	local a,b,c,d = {},{},{},{}

	app.PrintDebug("table.insert",count)
	-- 0.221352 @ 1M
	for i=1,count do
		table.insert(a,i)
	end
	app.PrintDebugPrior("---")

	local table_insert = table.insert
	app.PrintDebug("table_insert",count)
	-- 0.214889 @ 1M
	for i=1,count do
		table_insert(b,i)
	end
	app.PrintDebugPrior("---")

	local tinsert = tinsert
	app.PrintDebug("tinsert",count)
	-- 0.214733 @ 1M
	for i=1,count do
		tinsert(c,i)
	end
	app.PrintDebugPrior("---")

	local tinsert = tinsert
	app.PrintDebug("t[#t+1]",count)
	-- 0.087703 @ 1M
	for i=1,count do
		d[#d+1]=i
	end
	app.PrintDebugPrior("---")
end

function ATTfuncvsor(count)
	count = count or 1000

	local function hash(t)
		local a = t.hash
		if a then return a end
		a = app.CreateHash(t)
		return a
	end

	local o = app.__CreateObject(app.SearchForObject("questID", 8440))
	local p = {key="text",text="temp"}
	local temp

	app.PrintDebug("direct-only-object",count)
	-- 2.010676 @ 1M
	for i=1,count do
		temp = o.hash
		o.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("func-only-object",count)
	-- 2.088579 @ 1M
	for i=1,count do
		temp = hash(o)
		o.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("direct|func-object",count)
	-- 2.025655 @ 1M
	for i=1,count do
		temp = o.hash or hash(o)
		o.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("direct-only-table",count)
	-- 0.029104 @ 1M
	for i=1,count do
		temp = p.hash
		p.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("func-only-table",count)
	-- 0.510414 @ 1M
	for i=1,count do
		temp = hash(p)
		p.hash = nil
	end
	app.PrintDebugPrior("---")

	app.PrintDebug("direct|func-table",count)
	-- 0.527799 @ 1M
	for i=1,count do
		temp = p.hash or hash(p)
		p.hash = nil
	end
	app.PrintDebugPrior("---")

end
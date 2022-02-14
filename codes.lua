function selectionSort(a)
	for i = 1, #a-1 do
		local t = i
		for j = i+1, #a do
			if a[j] < a[t] then
				t = j
			end
		end
		a[i], a[t] = a[t], a[i]
	end
end

function pos(t, v)
	for _, o in pairs(t) do
		if o == v then
			return _
		end
	end
end

function insertionSort(a)
  local ret = {a[1], a[2]}
  for i = 3, #a do
    table.insert(ret, pos(ret, a[i]), a[i])
  end
  return ret
end


function sort(t)
	local tbl = {}
	for i, v in ipairs(t)
		for j, w in ipairs(tbl)
			if v>w then
				table.insert(tbl,i)
				break
			end
		end
	end
	return tbl
end


def merge(arr)
	return arr if arr.length < 2

	mid = arr.length / 2
	left = merge(arr[0...mid])
	right = merge(arr[mid..-1])

	sorted = []

	until left.empty? || right.empty?
		sorted << (left.first < right.first ? left.shift : right.shift)
	end

	sorted + left + right
end
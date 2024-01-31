def fibs(i)
	return [0, 1] if i == 2

	arr = fibs(i - 1)

	arr << arr[-2] + arr[-1]
end
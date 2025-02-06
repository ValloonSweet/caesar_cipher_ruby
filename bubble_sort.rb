def bubble_sort(arr)
  n = arr.length
  (n - 1).times do
    (n - 1).times do |i|
      puts i
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
    n -= 1
  end
  arr
end
arr = [4,0,1,2,0,5,0,8]

posisi_tukar = 0
arr.each_with_index do |el, i|
  if arr[i] == 0 then
    posisi_tukar += 1
  end

  if arr[i] != 0 && posisi_tukar != 0 then
    arr[i - posisi_tukar] = el
    arr[i] = 0
  end
end

print arr

arr = [1,0,2,0,6,5,0,9]

depan = 0
belakang = arr.length - 1

while depan < belakang do
  if arr[depan] == 0 then
    depan += 1
  end

  if arr[belakang] == 0 then
    belakang -= 1
  end

  if arr[depan] != 0 && arr[belakang] != 0 then
    temp = arr[depan]
    arr[depan] = arr[belakang]
    arr[belakang] = temp
    depan += 1
    belakang -= 1
  end
end
print arr

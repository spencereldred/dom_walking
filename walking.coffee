walkRight = true
left = 400
right = 700
x = left
move = ->
  img = document.getElementsByTagName("img")[0]
  x += 5 if walkRight
  x -= 5 unless walkRight
  img.style.left = x + "px"
  img.classList.toggle "flip-img" if x > right or x < left
  walkRight = true if x < left
  walkRight = false if x > right

setInterval move, 100


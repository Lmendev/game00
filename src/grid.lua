function grid_init()
  rows = 9
  cols = 9

  grid = {}
  for y = 0, rows - 1 do
    grid[y] = {}
    for x = 0, cols - 1 do
      grid[y][x] = 0
    end
  end
end

function grid_toggle()
  if grid[cy][cx] == 0 then
    grid[cy][cx] = 1
  else
    grid[cy][cx] = 0
  end
end

function grid_draw()
  for y = 0, rows - 1 do
    for x = 0, cols - 1 do
      local sx = ox + x * 8
      local sy = oy + y * 8

      if grid[y][x] == 1 then
        spr(3, sx, sy)
      else
        spr(0, sx, sy)
      end
    end
  end
end

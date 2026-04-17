function cursor_init()
  cx = 0
  cy = 0
end

function cursor_update()
  if btnp(0) then cx = max(cx - 1, 0) end
  if btnp(1) then cx = min(cx + 1, rows - 1) end
  if btnp(2) then cy = max(cy - 1, 0) end
  if btnp(3) then cy = min(cy + 1, cols - 1) end
end

function cursor_draw()
  local sx = ox + cx * 8
  local sy = oy + cy * 8

  if t() % .5 < .25 then
    rect(sx - 1, sy - 1, sx + 8, sy + 8, 7)
  else
    rect(sx - 1, sy - 1, sx + 8, sy + 8, 10)
  end
end

function _init()
  ox = 28
  oy = 28

  cursor_init()
  grid_init()
end

function _update()
  cursor_update()

  if btnp(4) then
    grid_toggle()
  end
end

function _draw()
  cls()

  grid_draw()
  cursor_draw()
end

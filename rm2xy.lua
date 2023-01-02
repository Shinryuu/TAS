-- RM2 Subpixels

local function pixels()
      
      -- X position
      local X  = math.floor((memory.readbyte(0x460)*256+memory.readbyte(0x480))/256.0 * 1000)/1000
      -- Y position
      local Y  = math.floor((memory.readbyte(0x4a0)*256+memory.readbyte(0x4c0))/256.0 * 1000)/1000

      local xadj, yadj = -3, 5
      gui.text(5+xadj,5+yadj, "X:"..X.."", "magenta", "black")
      gui.text(5+xadj,15+yadj,"Y:"..Y.."", "cyan", "black")

end

gui.register(pixels)

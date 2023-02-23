local timingPointsHidden = false

function draw()
  imgui.Begin("Hide/Show")
  if imgui.Button(timingPointsHidden and "Show Timing Points" or "Hide Timing Points") then
    toggleTimingPoints()
  end
  imgui.End()
end

function toggleTimingPoints()
  timingPointsHidden = not timingPointsHidden
  for _, tp in pairs(map.TimingPoints) do
    actions.ChangeTimingPointHidden(tp, timingPointsHidden)
  end
end

function draw()
  imgui.Begin("Hide/Show")
  if imgui.Button("Hide Timing Points") then
    hideTimingPoints()
  end
  if imgui.Button("Show Timing Points") then
    showTimingPoints()
  end
  imgui.End()
end

function hideTimingPoints()
  for _, tp in pairs(map.TimingPoints) do
    actions.ChangeTimingPointHidden(tp, true)
  end
end

function showTimingPoints()
  for _, tp in pairs(map.TimingPoints) do
    actions.ChangeTimingPointHidden(tp, false)
  end
end

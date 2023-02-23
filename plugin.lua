local hiddenTPs = {}  -- Keep track of which TPs have been hidden

function draw()
  imgui.Begin("Hide")
  if imgui.Button("Do the thing") then
    hideTimingPoints()
  end
  if imgui.Button("Undo the thing") then
    unhideTimingPoints()
  end
  imgui.End()
end

function hideTimingPoints()
  for _, tp in pairs(map.TimingPoints) do
    if not tp.IsInherited then  -- Ignore inherited TPs
      actions.ChangeTimingPointHidden(tp, true)
      hiddenTPs[tp] = true
    end
  end
end

function unhideTimingPoints()
  for tp, _ in pairs(hiddenTPs) do
    actions.ChangeTimingPointHidden(tp, false)
  end
  hiddenTPs = {}
end

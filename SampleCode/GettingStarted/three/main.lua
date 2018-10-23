local widget = require( "widget" )
 
-- The "onRowRender" function may go here (see example under "Inserting Rows", above)
 
-- Create the widget
local function onRowRender( event )
 
    -- Get reference to the row group
    local row = event.row
 
    -- Cache the row "contentWidth" and "contentHeight" because the row bounds can change as children objects are added
    local rowHeight = row.contentHeight
    local rowWidth = row.contentWidth
 
    local rowTitle = display.newText( row, "Row Num" .. row.index, 0, 0, nil, 14 )
    rowTitle:setFillColor( 0 )
 
    -- Align the label left and vertically centered
    rowTitle.anchorX = 0
    rowTitle.x = 0
    rowTitle.y = rowHeight * 0.5
end

local tableView = widget.newTableView(
    {
        left = 0,
        top = 0,
        height = 530,
        width = 800,
        onRowRender = onRowRender,
        onRowTouch = onRowTouch,
        listener = scrollListener
    }
)
 
-- Insert 40 rows
for i = 1, 40 do
 
    local isCategory = false
    local rowHeight = 36
    local rowColor = { default={0.4,1,0.6}, over={1,0.5,0,0.2} }
    local lineColor = { 0.5, 0.5, 0.5 }
 
    -- Make some rows categories
    if ( i == 1 or i == 21 ) then
        isCategory = true
        rowHeight = 40
        rowColor = { default={0.8,0.8,0.8,0.8} }
        lineColor = { 1, 0, 0 }
    end
 
    -- Insert a row into the tableView
    tableView:insertRow(
        {
            isCategory = isCategory,
            rowHeight = rowHeight,
            rowColor = rowColor,
            lineColor = lineColor
        }
    )
end
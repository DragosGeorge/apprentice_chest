quest apprentice_chest begin
   	state start begin
        when 50187.use with pc.get_level() >= 1 begin
            if pc.get_empty_inventory_count() <= 9 then
                syschat("Your inventory is too full to open the chest.")
                return
            end
            if pc.getqf("apprentice_chest_lv1") == 1 then
                syschat("You have already opened a chest on this account.")
                return
            end
            local items = {{50188, 1}, {71027, 5}, {71028, 5}, {71029, 5}, {71030, 5}, {71044, 5}, {71045, 5}, {27102, 200}, {27105, 200} }
            for _, item in ipairs(items) do
                pc.give_item2(item[1], item[2])
            end
            pc.remove_item(50187, 1)
            pc.setqf("apprentice_chest_lv1", 1)
    	end
	end
end
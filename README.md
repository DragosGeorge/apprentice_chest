# Apprentice's Chest

This code is intended to implement a chest in the game, which can be opened by players with the specified minimum level. The chest provides unique rewards and can only be opened once per player.

## How It Works

The chest is accessible through an in-game event, which checks the player's level and whether their inventory has enough available space. If the conditions are met, the chest is opened, and the player receives the rewards. After opening the chest, it becomes unavailable for the same player.

## How to Use

1. Create a new file in your quests and paste the provided code.
2. Compile the quest from the console using ./qc.
3. Enter the game and execute the command /reload q.
4. Once players meet the necessary conditions, they can access the chest and receive the rewards.

## Configuration

To customize the rewards offered by the chest, modify the `items` list in the source code. Each element in the list is a table containing the ID and quantity for each granted item.

```lua
local items = {
    {50188, 1},   -- Example: {item_ID, quantity}
    {71027, 5},
    {71028, 5},
    -- Add or remove items as needed
}

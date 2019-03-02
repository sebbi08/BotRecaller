local newEntity = table.deepcopy(data.raw["logistic-container"]["logistic-chest-requester"])
newEntity.name = "logistic-chest-botRecaller"
newEntity.icon = "__BotRecaller__/graphics/icon.png"
newEntity.minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-botRecaller"}
newEntity.picture =
    {
      filename = "__BotRecaller__/graphics/entity.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.09375, 0}
    }

local newItem = table.deepcopy(data.raw["item"]["logistic-chest-requester"])
newItem.name = "logistic-chest-botRecaller"
newItem.place_result = "logistic-chest-botRecaller"
newItem.icon = newEntity.icon
newItem.icon_size = 32
newItem.order = newItem.order .. "b"

local newRecipe = table.deepcopy(data.raw["recipe"]["roboport"])
newRecipe.name = "logistic-chest-botRecaller"
newRecipe.result = "logistic-chest-botRecaller"
newRecipe.icon = newEntity.icon
newRecipe.icon_size = 32
newRecipe.enabled = false

data:extend({newEntity, newItem, newRecipe})

table.insert(data.raw["technology"]["construction-robotics"].effects,{type = "unlock-recipe",recipe = "logistic-chest-botRecaller"})

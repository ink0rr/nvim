local M = {}

M.schemas = function()
  local config_dir = "file:///" .. vim.fn.stdpath("data"):gsub("\\", "/")
  local schemas = config_dir .. "/kaidan"
  return {
    {
      fileMatch = "skin_pack/skins.{json,jsonc,json5}",
      url = schemas .. "/skins/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/manifest.{json,jsonc,json5}",
        "*BP/manifest.{json,jsonc,json5}",
        "*bp/manifest.{json,jsonc,json5}",
        "resource_pack/manifest.{json,jsonc,json5}",
        "*RP/manifest.{json,jsonc,json5}",
        "*rp/manifest.{json,jsonc,json5}",
      },
      url = schemas .. "/manifest/main.json",
    },
    {
      fileMatch = {
        "resource_pack/animation_controllers/**/*.{json,jsonc,json5}",
        "*RP/animation_controllers/**/*.{json,jsonc,json5}",
        "*rp/animation_controllers/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/clientAnimationController/main.json",
    },
    {
      fileMatch = {
        "resource_pack/animations/**/*.{json,jsonc,json5}",
        "*RP/animations/**/*.{json,jsonc,json5}",
        "*rp/animations/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/clientAnimation/main.json",
    },
    {
      fileMatch = {
        "resource_pack/attachables/**/*.{json,jsonc,json5}",
        "*RP/attachables/**/*.{json,jsonc,json5}",
        "*rp/attachables/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/attachable/main.json",
    },
    {
      fileMatch = {
        "resource_pack/biomes_client.{json,jsonc,json5}",
        "*RP/biomes_client.{json,jsonc,json5}",
        "*rp/biomes_client.{json,jsonc,json5}",
      },
      url = schemas .. "/clientBiome/main.json",
    },
    {
      fileMatch = {
        "resource_pack/blocks.{json,jsonc,json5}",
        "*RP/blocks.{json,jsonc,json5}",
        "*rp/blocks.{json,jsonc,json5}",
      },
      url = schemas .. "/clientBlock/main.json",
    },
    {
      fileMatch = {
        "resource_pack/entity/**/*.{json,jsonc,json5}",
        "*RP/entity/**/*.{json,jsonc,json5}",
        "*rp/entity/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/clientEntity/main.json",
    },
    {
      fileMatch = {
        "resource_pack/fogs/**/*.{json,jsonc,json5}",
        "*RP/fogs/**/*.{json,jsonc,json5}",
        "*rp/fogs/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/fog/main.json",
    },
    {
      fileMatch = {
        "resource_pack/textures/flipbook_textures.{json,jsonc,json5}",
        "*RP/textures/flipbook_textures.{json,jsonc,json5}",
        "*rp/textures/flipbook_textures.{json,jsonc,json5}",
      },
      url = schemas .. "/flipbookTexture/main.json",
    },
    {
      fileMatch = {
        "resource_pack/textures/item_texture.{json,jsonc,json5}",
        "*RP/textures/item_texture.{json,jsonc,json5}",
        "*rp/textures/item_texture.{json,jsonc,json5}",
      },
      url = schemas .. "/itemTexture/main.json",
    },
    {
      fileMatch = {
        "resource_pack/items/**/*.{json,jsonc,json5}",
        "*RP/items/**/*.{json,jsonc,json5}",
        "*rp/items/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/clientItem/main.json",
    },
    {
      fileMatch = {
        "resource_pack/models/entity/**/*.{json,jsonc,json5}",
        "*RP/models/entity/**/*.{json,jsonc,json5}",
        "*rp/models/entity/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/geometry/main.json",
    },
    {
      fileMatch = {
        "resource_pack/materials/**/*.material",
        "*RP/materials/**/*.material",
        "*rp/materials/**/*.material",
      },
      url = schemas .. "/material/main.json",
    },
    {
      fileMatch = {
        "resource_pack/sounds/music_definitions.{json,jsonc,json5}",
        "*RP/sounds/music_definitions.{json,jsonc,json5}",
        "*rp/sounds/music_definitions.{json,jsonc,json5}",
      },
      url = schemas .. "/musicDefinition/main.json",
    },
    {
      fileMatch = {
        "resource_pack/particles/**/*.{json,jsonc,json5}",
        "*RP/particles/**/*.{json,jsonc,json5}",
        "*rp/particles/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/particle/main.json",
    },
    {
      fileMatch = {
        "resource_pack/render_controllers/**/*.{json,jsonc,json5}",
        "*RP/render_controllers/**/*.{json,jsonc,json5}",
        "*rp/render_controllers/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/renderController/main.json",
    },
    {
      fileMatch = {
        "resource_pack/sounds/sound_definitions.{json,jsonc,json5}",
        "*RP/sounds/sound_definitions.{json,jsonc,json5}",
        "*rp/sounds/sound_definitions.{json,jsonc,json5}",
      },
      url = schemas .. "/soundDefinition/main.json",
    },
    {
      fileMatch = {
        "resource_pack/sounds.{json,jsonc,json5}",
        "*RP/sounds.{json,jsonc,json5}",
        "*rp/sounds.{json,jsonc,json5}",
      },
      url = schemas .. "/clientSound/main.json",
    },
    {
      fileMatch = {
        "resource_pack/textures/terrain_texture.{json,jsonc,json5}",
        "*RP/textures/terrain_texture.{json,jsonc,json5}",
        "*rp/textures/terrain_texture.{json,jsonc,json5}",
      },
      url = schemas .. "/terrainTexture/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/animation_controllers/**/*.{json,jsonc,json5}",
        "*BP/animation_controllers/**/*.{json,jsonc,json5}",
        "*bp/animation_controllers/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/animationController/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/animations/**/*.{json,jsonc,json5}",
        "*BP/animations/**/*.{json,jsonc,json5}",
        "*bp/animations/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/animation/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/biomes/**/*.{json,jsonc,json5}",
        "*BP/biomes/**/*.{json,jsonc,json5}",
        "*bp/biomes/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/biome/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/cameras/**/*.{json,jsonc,json5}",
        "*BP/cameras/**/*.{json,jsonc,json5}",
        "*bp/cameras/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/cameraPreset/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/dialogue/**/*.{json,jsonc,json5}",
        "*BP/dialogue/**/*.{json,jsonc,json5}",
        "*bp/dialogue/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/dialogue/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/functions/tick.{json,jsonc,json5}",
        "*BP/functions/tick.{json,jsonc,json5}",
        "*bp/functions/tick.{json,jsonc,json5}",
      },
      url = schemas .. "/tick/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/loot_tables/**/*.{json,jsonc,json5}",
        "*BP/loot_tables/**/*.{json,jsonc,json5}",
        "*bp/loot_tables/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/lootTable/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/blocks/**/*.{json,jsonc,json5}",
        "*BP/blocks/**/*.{json,jsonc,json5}",
        "*bp/blocks/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/block/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/entities/**/*.{json,jsonc,json5}",
        "*BP/entities/**/*.{json,jsonc,json5}",
        "*bp/entities/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/entity/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/features/**/*.{json,jsonc,json5}",
        "*BP/features/**/*.{json,jsonc,json5}",
        "*bp/features/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/feature/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/feature_rules/**/*.{json,jsonc,json5}",
        "*BP/feature_rules/**/*.{json,jsonc,json5}",
        "*bp/feature_rules/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/featureRule/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/items/**/*.{json,jsonc,json5}",
        "*BP/items/**/*.{json,jsonc,json5}",
        "*bp/items/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/item/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/recipes/**/*.{json,jsonc,json5}",
        "*BP/recipes/**/*.{json,jsonc,json5}",
        "*bp/recipes/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/recipe/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/spawn_rules/**/*.{json,jsonc,json5}",
        "*BP/spawn_rules/**/*.{json,jsonc,json5}",
        "*bp/spawn_rules/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/spawnRule/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/trading/**/*.{json,jsonc,json5}",
        "*BP/trading/**/*.{json,jsonc,json5}",
        "*bp/trading/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/tradeTable/main.json",
    },
    {
      fileMatch = {
        "behavior_pack/volumes/**/*.{json,jsonc,json5}",
        "*BP/volumes/**/*.{json,jsonc,json5}",
        "*bp/volumes/**/*.{json,jsonc,json5}",
      },
      url = schemas .. "/volume/main.json",
    },
  }
end

return M

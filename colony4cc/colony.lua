--- You’ll now be able to craft the new Colony Peripheral block. Place it down in the world anywhere inside your colony borders, and then place a computer or turtle either immediately next to it or connected to it via a Wired Modem network.
--- If the computer was already running, then reboot it (hold down Ctrl+R) after placing the peripheral block.
---
--- Almost all API methods will return either a single value on success, or two values on failure — the first is nil and the second is a string with a human-readable error message.
--- You can ignore the second return value if you wish, but it may be useful to log it to help track down problems.
--- https://github.com/uecasm/colony4cc/wiki
--- `colony`
---@class ColonyCC
local colony = {}

--- Checks whether the Colony Peripheral has been placed inside a valid colony.
--- All other APIs will return nil if outside of a colony.
---@return boolean
function colony.isValid() end
--- Checks whether the given block coordinates are inside of this colony.
--- Note that entire chunks are either inside or outside the colony, so you only need to check one position in each chunk.
---@param pos Vector
---@return boolean
function colony.isWithin(pos) end
--- Returns basic information about the whole colony.
---@return ColonyCCInfo
function colony.getInfo() end
--- Returns information about all the buildings in the colony.
---@return ColonyCCBuilding[]
function colony.getBuildings() end
--- Returns information about all the citizens in the colony.
---@return ColonyCCCitizen[]
function colony.getCitizens() end
--- Returns information about all the visitors in the colony.
---@return ColonyCCVisitor[]
function colony.getVisitors() end
--- Returns information about all the players in the colony.
---@return ColonyCCPlayer[],ColonyCCRank[]
function colony.getPlayers() end
--- Returns an array of all currently active work orders (build requests).
---@return ColonyCCWorkOrder
function colony.getWorkOrders() end
--- Tries to get a list of resources associated with the given work order id.
--- Note that this is similar to the resource scroll display, and so depending on the current state of the build progress it may appear entirely blank.
---@param id number
---@return ColonyCCResource[]
function colony.getWorkOrderResources(id) end
--- Tries to get a list of resources associated with the current build-in-progress at the builder’s hut at the specified coordinates.
--- As above, sometimes this may return an empty list until the build gets underway.
--- You can also query a miner’s hut; although they tend to have more basic requests.
---@param pos Vector
---@return ColonyCCResource[]
function colony.getBuilderResources(pos) end
--- Returns the current player-resolved delivery requests.
--- Note that this does not include other kinds of requests (e.g. courier pickup), nor requests that are already being satisfied elsewhere in the system.
--- It’s mostly equivalent to the Clipboard.
---@return ColonyCCRequest[]
function colony.getRequests() end
--- Returns the complete research tree, along with the colony’s current research status.
--- Directly returned is a table with a key for each research branch; the value is an array of level 1 research topics.
---@return ColonyResearch[] @same as `advanced_peripherals`
function colony.getResearch() end

--- Highlights (so you can see through walls) and gives a small speed boost to a specific worker, similar to the Worker-Where-Are-You? scroll crafted by the Enchanter.
--- Requires one such scroll as fuel.
---@param id number @The id of the worker to highlight.
---@param dir string|number @(OPTIONAL) For a non-pocket peripheral, look in this direction for an inventory containing fuel.
---@return boolean|nil,nil|string @true,nil or nil,errorMessage
function colony.highlightWorker(id, dir) end
--- Highlights a building by drawing a holographic box around it (see below).
--- Requires one or more RGB Charge as fuel.
--- Note that there is no standard recipe for RGB Charges - they can only be crafted by a MineColonies Blacksmith (or later a Mechanic).
---
--- Each additional hologram selected will require an extra RGB Charge.
--- (Removing all holograms is free.)
--- Holograms will remain visible for a maximum of 2 minutes, refreshed whenever the method is called (at additional fuel charge).
--- You don’t get fuel refunds if you call the method before time is up, and the time is not extended longer than two minutes.
---
--- More than one building can be displaying holograms at the same time.
--- Calling the method again on the same building will replace or clear the holograms shown by that building.
---@param pos Vector @Coordinates of hut.
---@param options ColonyCCHighlightBuilding @(OPTIONAL) List of drawing options.
---@param dir string|number @(OPTIONAL) For a non-pocket peripheral, look in this direction for an inventory containing fuel.
---@return boolean|nil,nil|string @true,nil or nil,errorMessage
function colony.highlightBuilding(pos, options, dir) end



---@class ColonyCCInfo
local colonyInfo = {}

--- Colony id (can be used for commands).
---@type number
colonyInfo.id = 0
--- Colony name.
---@type string
colonyInfo.string = ""
--- Colony style.
---@type string
colonyInfo.style = ""
--- true if colony is currently active (owning players are online and inside the colony).
---@type boolean
colonyInfo.active = false
--- Dimension and coordinates of the center of the colony.
---@type ColonyCCLocation
colonyInfo.location = {}
--- Overall happiness of the colony’s citizens.
---@type number
colonyInfo.happiness = {}
--- true if the colony is currently under attack by a raid.
---@type boolean
colonyInfo.raid = {}
--- The current number of citizens. This can be higher than the below.
---@type number
colonyInfo.citizens = {}
--- The max number of citizens that can be properly housed.
---@type number
colonyInfo.maxCitizens = {}



---@class ColonyCCLocation
local colonyLocation = {}

---@type string
colonyLocation.world = ""
---@type number
colonyLocation.x = 0
---@type number
colonyLocation.y = 0
---@type number
colonyLocation.z = 0



---@class ColonyCCBuilding
local colonyBuilding = {}

--- Coordinates of the building hut.
---@type Vector
colonyBuilding.location = {}
--- The building type.
---@type string
colonyBuilding.type = ""
--- The building style.
---@type string
colonyBuilding.style = ""
--- The current building level.
---@type number
colonyBuilding.level = 0
--- The maximum building level.
---@type number
colonyBuilding.maxLevel = 0
--- The custom building name, if set; an empty string by default.
---@type string
colonyBuilding.name = ""
--- The number of chunks around this building that will be claimed for the colony.
---@type number
colonyBuilding.claimRadius = 0
--- true if the building is currently built (not deconstructed or unbuilt).
---@type boolean
colonyBuilding.built = false
--- true if there’s some kind of build in progress (build, upgrade, repair, deconstruct).
---@type boolean
colonyBuilding.wip = false
--- The pickup priority for the couriers.
---@type number
colonyBuilding.priority = 0
--- Footprint information
---@type ColonyCCBuildingFootprint
colonyBuilding.footprint = {}
--- An array of each citizen assigned to this building.
---@type ColonyCCBuildingCitizen[]
colonyBuilding.citizens = {}
--- The number of storage blocks registered in this building.
---@type number
colonyBuilding.storageBlocks = 0
--- The total number of storage slots in this building.
---@type number
colonyBuilding.storageSlots = 0
--- true if the building is close enough to a guard tower.
---@type boolean
colonyBuilding.guarded = false



---@class ColonyCCBuildingFootprint
local colonyBuildingFootprint = {}

--- Coordinates of one corner of the building.
---@type Vector
colonyBuildingFootprint.corner1 = {}
--- Coordinates of the opposite corner of the building.
---@type Vector
colonyBuildingFootprint.corner2 = {}
--- Rotation of the schematic.
---@type number
colonyBuildingFootprint.rotation = 0
--- true if the schematic has been mirrored.
---@type boolean
colonyBuildingFootprint.mirror = false



---@class ColonyCCBuildingCitizen
local colonyBuildingCitizen = {}

---@type number
colonyBuildingCitizen.id = 0
---@type string
colonyBuildingCitizen.name = ""



---@class ColonyCCCitizen
local colonyCitizen = {}

--- Id of the citizen, can be used in commands.
---@type number
colonyCitizen.id = 0
--- Name of the citizen.
---@type string
colonyCitizen.name = ""
--- The citizen’s last known coordinates.
---@type Vector
colonyCitizen.location = {}
--- The coordinates of the citizen’s bed (if they have one).
---@type Vector
colonyCitizen.bed = {}
--- The citizen’s job (if they have one).
---@type string
colonyCitizen.job = ""
--- The citizen’s home.
---@type ColonyCCLocTypeLevel
colonyCitizen.home = {}
--- The citizen’s workplace.
---@type ColonyCCLocTypeLevel
colonyCitizen.work = {}
--- What they are currently doing.
---@type string
colonyCitizen.status = {}
--- "child" or "adult"
---@type string
colonyCitizen.age = 0
--- "male" or "female"
---@type string
colonyCitizen.sex = {}
--- The citizen’s saturation level (how not-hungry they are).
---@type number
colonyCitizen.saturation = 0
--- The citizen’s overall happiness.
---@type number @With decimal point, up to 10
colonyCitizen.happiness = 0
--- The citizen’s skills
---@type ColonySkillTable @same as in `advanced_peripherals`'s
colonyCitizen.skills = {}
--- The citizen’s current health (if they’re loaded).
---@type number
colonyCitizen.health = 0
--- The citizen’s maximum health (if they’re loaded).
---@type number
colonyCitizen.max_health = 0
--- The citizen’s current armor level (if they’re loaded).
---@type number
colonyCitizen.armor = 0
--- The citizen’s current armor toughness (if they’re loaded).
---@type number
colonyCitizen.toughness = 0



---@class ColonyCCLocTypeLevel
local colonyLocTypeLevel = {}

---@type Vector
colonyLocTypeLevel.location = {}
---@type string
colonyLocTypeLevel.type = ""
---@type number
colonyLocTypeLevel.level = 0



---@class ColonyCCVisitor
local colonyVisitor = {}

--- Id of the visitor, can be used in commands.
---@type number @always negative?
colonyVisitor.id = 0
--- Name of the visitor.
---@type string
colonyVisitor.name = ""
--- The visitor’s last known coordinates.
---@type Vector
colonyVisitor.location = {}
--- The coordinates of the visitor’s favourite chair in the tavern (if they have one).
---@type Vector|nil
colonyVisitor.chair = {}
--- "adult" or "child"
---@type string
colonyVisitor.age = ""
--- "male" or "female"
---@type string
colonyVisitor.sex = ""
--- The visitor’s saturation level (how not-hungry they are).
---@type number
colonyVisitor.saturation = 0
--- The visitor’s overall happiness.
---@type number
colonyVisitor.happiness = 0
--- The visitor’s skills.
---@type ColonySkillTable
colonyVisitor.skills = {}
--- The item and count required to recruit this visitor.
---@type ColonyCCVisitorCost
colonyVisitor.cost = {}



---@class ColonyCCVisitorCost
local colonyVisitorCost = {}

---@type number
colonyVisitorCost.count = 0
--- "Honeycomb"
---@type string
colonyVisitorCost.displayName = 0
--- Table contains `displayName` and `id`, this is based on Creative tabs
---@type table[]
colonyVisitorCost.itemGroups = 0
--- 64
---@type number
colonyVisitorCost.maxCount = 0
--- "minecraft:honeycomb"
---@type string
colonyVisitorCost.name = 0
--- key: tag
--- value: boolean
---@type table
colonyVisitorCost.tags = 0



---@class ColonyCCPlayer
local colonyPlayer = {}

--- Name of player.
---@type string
colonyPlayer.name = ""
--- Rank of player.
--- Players who haven’t been explicitly assigned any rank will not have a rank value set, but are treated as equivalent to the neutral rank.
---@type string|nil
colonyPlayer.rank = ""
--- True if they are currently inside the colony.
---@type boolean
colonyPlayer.present = false



---@class ColonyCCRank
local colonyRank = {}

--- Name of rank.
---@type string
colonyRank.name = ""
--- True if this rank is considered hostile to the colony.
---@type boolean
colonyRank.rank = false
--- List of permissions granted to this rank.
---@type table
colonyRank.permissions = {}



---@class ColonyCCWorkOrder
local colonyWorkOrder = {}

--- The order id.
---@type number
colonyWorkOrder.id = 0
--- The type of order, e.g. "building", "removal"...
---@type string
colonyWorkOrder.type = ""
--- The current building level (0 if not yet built).
---@type number
colonyWorkOrder.currentLevel = {}
--- The target level.
---@type string
colonyWorkOrder.targetLevel = ""
--- Coordinates of the builder’s hut responsible for building this order (if any).
---@type Vector
colonyWorkOrder.claimedByBuilding = {}
--- Coordinates of the building being built.
---@type Vector
colonyWorkOrder.location = {}
---@type string
colonyWorkOrder.structureName = ""
---@type number
colonyWorkOrder.amountOfResources = 0
---@type number
colonyWorkOrder.cleared = 0
--- Empty string if no custom name is set.
---@type number
colonyWorkOrder.customName = ""
--- Empty string if no custom name is set.
---@type number
colonyWorkOrder.customParentName = ""
---@type number
colonyWorkOrder.isMirrored = 0
--- "default"
---@type string
colonyWorkOrder.iterator = ""
---@type string
colonyWorkOrder.parentTranslationKey = ""
---@type number
colonyWorkOrder.priority = 0
---@type number
colonyWorkOrder.requested = 0
---@type number
colonyWorkOrder.rotation = 0
--- "schematics/birch/university3"
---@type string
colonyWorkOrder.structureName = ""
--- "com.minecolonies.building.university"
---@type string
colonyWorkOrder.workOrderName = ""
---@type number
colonyWorkOrder.workOrderType = 0



---@class ColonyCCResource
local colonyResource = {}

--- Item
---@type ColonyCCItem
colonyResource.item = {}
---@type number
colonyResource.available = 0
---@type number
colonyResource.delivering = 0
--- "DONT_HAVE"   = the builder doesn't have any of this item.
--- "HAVE_ENOUGH" = the builder has enough items to get started (usually just 1) but will run out before finishing.
--- "NEED_MORE"   = the builder doesn't have enough to continue.
--- "IN_DELIVERY" = the builder is waiting for a delivery of items.
--- "NOT_NEEDED"  = the builder has enough items to complete the build.
---@type string
colonyResource.status = ""



---@class ColonyCCItem
local colonyItem = {}

--- Item opener
--- "minecraft:armor_stand"
---@type string
colonyItem.name = ""
---@type string
colonyItem.displayName = ""
---@type number
colonyItem.count = ""



---@class ColonyCCRequest
local colonyRequest = {}

--- "8 Glass"
--- A short name describing the request (typically the item and count).
---@type string
colonyRequest.name = ""
--- A longer description of the request (but usually identical to the name).
---@type string
colonyRequest.desc = ""
--- The current state of the request, typically "IN_PROGRESS".
---@type string
colonyRequest.state = ""
--- The maximum number of items requested.
---@type number
colonyRequest.count = 0
--- The minimum number of items that a courier will grab (but not sufficient to complete the whole request).
---@type number
colonyRequest.minCount = 0
---@type ColonyCCItem[]
colonyRequest.items = {}
--- "Builder Aaaa B. Cccc"
---@type string
colonyRequest.target = ""



--- Options for `colony.highlightBuilding()`.
---@class ColonyCCHighlightBuilding
local colonyHighlightBuilding = {}

--- A red box around the hut block itself, visible through walls.
---
--- 3 values:
--- - nil - don't show, hide when already shown
--- - "frame" - show as wireframe
--- - any string value - show full colored box
---@type string|nil
colonyHighlightBuilding.hut = ""
--- A blue box around the building’s blueprint footprint.
---
--- 3 values:
--- - nil - don't show, hide when already shown
--- - "frame" - show as wireframe
--- - any string value - show full colored box
---@type string|nil
colonyHighlightBuilding.footprint = ""
--- A green box around the building’s chunk claim area (or the area that guard buildings are guarding).
---
--- 3 values:
--- - nil - don't show, hide when already shown
--- - "frame" - show as wireframe
--- - any string value - show full colored box
---@type string|nil
colonyHighlightBuilding.claim = ""
--- If omitted, all players currently logged in can see the holograms. Set to a specific player name to only show them to that player.
---@type string|nil
colonyHighlightBuilding.player = ""

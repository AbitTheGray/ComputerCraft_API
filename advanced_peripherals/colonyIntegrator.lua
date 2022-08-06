--- https://docs.srendi.de/1.16/peripherals/colony_integrator/
--- `colonyIntegrator`
---@class ColonyIntegrator
local colonyIntegrator = {}

--- Returns true if the block is in a colony.
---@return boolean
function colonyIntegrator.isInColony() end
--- Returns true if the given coordinates are in a colony.
---@param position Vector
---@return boolean
function colonyIntegrator.isWithin(position) end
--- Returns a table with all citizens of the colony.
---@return ColonyCitizen[]
function colonyIntegrator.getCitizens() end
--- Returns the id of the colony.
---@return number
function colonyIntegrator.getColonyID() end
--- Returns the name of the colony.
---@return string
function colonyIntegrator.getColonyName() end
--- Returns the style of the colony.
---@return string
function colonyIntegrator.getColonyStyle() end
--- Returns true if the colony is active(Trusted players are online).
---@return boolean
function colonyIntegrator.isActive() end
--- Returns the overall happiness of the colony.
---@return number
function colonyIntegrator.getHappiness() end
--- Returns the position of the townhall.
---@return Vector
function colonyIntegrator.getLocation() end
--- Returns true if the colony is currently under attack.
---@return boolean
function colonyIntegrator.isUnderAttack() end
--- Returns the amount of citizens.
---@return number
function colonyIntegrator.amountOfCitizens() end
--- Returns the possible max amount of citizens.
---@return number
function colonyIntegrator.maxOfCitizens() end
--- Returns the amount of graves in the colony.
---@return number
function colonyIntegrator.amountOfGraves() end
--- Returns the amount of currently existing construction sites.
---@return number
function colonyIntegrator.amountOfConstructionSites() end
--- Returns a table with all visitors in your tavern of the colony.
---@return ColonyVisitor[]
function colonyIntegrator.getVisitors() end
--- Returns a table with all buildings in your colony.
---@return ColonyBuilding
function colonyIntegrator.getBuildings() end
--- Returns a table with all work orders.
---@return ColonyWorkOrder[]
function colonyIntegrator.getWorkOrders() end
--- Returns all possible researches, currently researches that is being worked on and research that has already been researched.
---@return ColonyResearch
function colonyIntegrator.getResearch() end
--- Returns a table with the resources of a work order. You can find out every order and its ID with getWorkOrders().
---@param id number
---@return ColonyResource[]|nil
function colonyIntegrator.getWorkOrderResources(id) end
--- Returns all requests in any kind of the colony.
---@return ColonyRequest[]
function colonyIntegrator.getRequests() end
--- Returns all resources of the given builder's hut.
---@param position Vector
---@return ColonyResource[]
function colonyIntegrator.getBuilderResources(position) end



---@class ColonyCitizen
local colonyCitizen = {}

---@type Vector
colonyCitizen.bedPos = {}
---@type boolean
colonyCitizen.betterFood = false
---@type boolean
colonyCitizen.isIdle = false
---@type number @With decimal point, up to 10
colonyCitizen.happiness = 0
---@type ColonyHome
colonyCitizen.home = {}
---@type number
colonyCitizen.armor = 0
---@type number
colonyCitizen.toughness = 0
---@type number[]
colonyCitizen.children = {}
---@type boolean
colonyCitizen.isAsleep = false
--- "male" or "female"
---@type string
colonyCitizen.gender = {}
--- "child" or "adult"
---@type string
colonyCitizen.age = 0
---@type number
colonyCitizen.id = 0
---@type string
colonyCitizen.state = {}
---@type Vector
colonyCitizen.location = {}
---@type number
colonyCitizen.health = 0
---@type string
colonyCitizen.name = ""
---@type ColonyWork
colonyCitizen.work = {}
---@type ColonySkillTable
colonyCitizen.skills = {}
---@type number
colonyCitizen.maxHealth = 0
---@type number
colonyCitizen.saturation = 0



---@class ColonyHome
local colonyHome = {}

---@type number
colonyHome.level = 0
---@type Vector
colonyHome.location = {}
---@type string
colonyHome.type = ""



---@class ColonySkillTable
local colonySkillTable = {}

---@type ColonySkill
colonySkillTable.Athletics = {}
---@type ColonySkill
colonySkillTable.Creativity = {}
---@type ColonySkill
colonySkillTable.Mana = {}
---@type ColonySkill
colonySkillTable.Intelligence = {}
---@type ColonySkill
colonySkillTable.Knowledge = {}
---@type ColonySkill
colonySkillTable.Dexterity = {}
---@type ColonySkill
colonySkillTable.Agility = {}
---@type ColonySkill
colonySkillTable.Adaptability = {}
---@type ColonySkill
colonySkillTable.Focus = {}
---@type ColonySkill
colonySkillTable.Stamina = {}
---@type ColonySkill
colonySkillTable.Strength = {}



---@class ColonySkill
local colonySkill = {}

---@type number
colonySkill.level = 0
---@type number
colonySkill.xp = 0



---@class ColonyWork
local colonyWork = {}

---@type number
colonyWork.level = 0
---@type Vector
colonyWork.location = {}
--- "com.minecolonies.building.library", "com.minecolonies.building.builder", "com.minecolonies.building.deliveryman"...
---@type string
colonyWork.name = ""
--- "library", "builder", "deliveryman"...
---@type string
colonyWork.type = ""



---@class ColonyVisitor
local colonyVisitor = {}

---@type number @always negative?
colonyVisitor.id = 0
--- "male" or "female"
---@type string
colonyVisitor.gender = ""
--- "adult" or "child"
---@type string
colonyVisitor.age = ""
---@type number
colonyVisitor.happiness = 0
---@type number
colonyVisitor.saturation = 0
---@type Vector
colonyVisitor.location = {}
---@type ColonySkillTable
colonyVisitor.skills = {}
--- only item opener, not amount
---@type string
colonyVisitor.recruitCost = ""
---@type string
colonyVisitor.name = ""



---@class ColonyBuilding
local colonyBuilding = {}

---@type ColonyBuildingCitizen[]
colonyBuilding.citizens = {}
--- "townhall"
---@type string
colonyBuilding.type = ""
---@type boolean
colonyBuilding.isWorkingOn = false
---@type number
colonyBuilding.storageBlocks = 0
---@type number
colonyBuilding.maxLevel = 0
--- "birch"
---@type string
colonyBuilding.style = ""
--- Java path
--- "com.minecolonies.building.townhall"
---@type string
colonyBuilding.name = ""
---@type number
colonyBuilding.storageSlots = 0
---@type boolean
colonyBuilding.built = false
---@type boolean
colonyBuilding.guarded = false
---@type Vector
colonyBuilding.location = {}
---@type number
colonyBuilding.level = 0
---@type ColonyBuildingStructure
colonyBuilding.structure = {}
---@type number
colonyBuilding.priority = 0



---@class ColonyBuildingStructure
local colonyBuildingStructure = {}

---@type boolean
colonyBuildingStructure.mirror = false
---@type number
colonyBuildingStructure.rotation = 0



---@class ColonyBuildingCitizen
local colonyBuildingCitizen = {}

---@type number
colonyBuildingCitizen.id = 0
---@type string
colonyBuildingCitizen.name = ""



---@class ColonyWorkOrder
local colonyWorkOrder = {}

---@type Vector
colonyWorkOrder.builder = {}
---@type boolean
colonyWorkOrder.changed = false
---@type number
colonyWorkOrder.id = 0
---@type boolean
colonyWorkOrder.isClaimed = false
---@type Vector
colonyWorkOrder.location = {}
---@type number
colonyWorkOrder.priority = 0
--- "WorkOrderBuilding"
---@type string
colonyWorkOrder.type = ""



---@class ColonyResearch
local colonyResearch = {}

---@type ColonyResearchItem[]
colonyResearch["minecolonies:civilian"] = {}
---@type ColonyResearchItem[]
colonyResearch["minecolonies:unlockable"] = {}
---@type ColonyResearchItem[]
colonyResearch["minecolonies:technology"] = {}
---@type ColonyResearchItem[]
colonyResearch["minecolonies:combat"] = {}



---@class ColonyResearchItem
local colonyResearchItem = {}

--- "minecolonies:civilian/higherlearning"
---@type string
colonyResearchItem.id = ""
--- "Higher Learning"
---@type string
colonyResearchItem.name = ""
--- "TranslatableComponent{key...", after the '{' looks like start of JSON
---@type string[]
colonyResearchItem.name = {}
--- Top parent does not have this field.
--- "NOT_STARTED", "IN_PROGRESS" or "FINISHED"
---@type string
colonyResearchItem.status = ""
---@type ColonyResearchItem[]
colonyResearchItem.children = {}



---@class ColonyResource
local colonyResource = {}

---@type number
colonyResource.available = 0
---@type number
colonyResource.delivering = 0
--- Item display name
--- "Armor Stand"
---@type string
colonyResource.displayName = ""
--- Item opener
--- "minecraft:armor_stand"
---@type string
colonyResource.item = ""
---@type number
colonyResource.needed = 0
--- "DONT_HAVE"   = the builder doesn't have any of this item.
--- "HAVE_ENOUGH" = the builder has enough items to get started (usually just 1) but will run out before finishing.
--- "NEED_MORE"   = the builder doesn't have enough to continue.
--- "IN_DELIVERY" = the builder is waiting for a delivery of items.
--- "NOT_NEEDED"  = the builder has enough items to complete the build.
---@type string
colonyResource.status = ""



---@class ColonyRequest
local colonyRequest = {}

--- "IN_PROGRESS"
---@type string
colonyRequest.state = ""
---@type number
colonyRequest.count = 0
--- "8 Glass"
--- Minecraft item name prefixed by amount
---@type string
colonyRequest.name = ""
--- "Builder Aaaa B. Cccc"
---@type string
colonyRequest.target = ""
--- UUID/GUID with dashes
---@type string
colonyRequest.id = ""
---@type ColonyItemStack[]
colonyRequest.item = {}
---@type number
colonyRequest.minCount = 0
--- Same as `name`
---@type string
colonyRequest.desc = ""



---@class ColonyItemStack
local colonyItemStack = {}

---@type number
colonyItemStack.count = 0
--- Minecraft item name in square brackets
---@type string
colonyItemStack.displayName = ""
---@type number
colonyItemStack.maxStackSize = 0
--- Minecraft item opener
---@type string
colonyItemStack.name = ""
---@type table
colonyItemStack.nbt = {}
---@type string[]
colonyItemStack.tags = {}

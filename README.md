# ComputerCraft APIs

Personal hand-made version of different APIs I encountered.
Based on official documentation (see below) and testing.

Directories:
- `advanced_peripherals` - [docs.srendi.de](https://docs.srendi.de/) 1.16
- `computer_craft` - [tweaked.cc](https://tweaked.cc/) + [computercraft.info (wiki)](https://computercraft.info/wiki/)
  - `peripheral` - official Peripheral APIs
    - `generic` - generic peripheral APIs for interacting with otherwise unsupported blocks
- `mekanism` - based on testing, reports energy in J (not in FE) without `advanced_peripherals`
- `utils` - custom utils, not an API

Events are listed in each directory inside `events.md` file.

All `.lua` files have documentation based on [EmmyLua](https://github.com/EmmyLua) ([docs](https://emmylua.github.io/)) but extended by `@throw` to know when there is a chance of exception.

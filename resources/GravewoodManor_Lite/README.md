# Gravewood Manor Lite (free)

Version 1.0. A free sample of **Gravewood Manor: 32x32 + 16x16 Top-Down Pixel Art**, so you can try the auto-tile
workflow and the characters before you buy. Lite page: https://infreak.itch.io/gravewood-manor-lite

## What is in Lite (32x32 and 16x16)

- One room: **the salon**, in the ash_blue wallpaper (`Maps/salon_room.json`, renders next to it, and a Godot scene).
- Hero: **medium**, 5 animations (idle, walk, attack, hurt, death) in 8 directions.
- Enemies: **ghost_maid** and **possessed_doll**, idle, move and attack in 8 directions.
- Tiles: 85 in 4 sets: **parquet**, the ash_blue **manor wall** with its face, its **wall features**
  (rain window, door, fireplace with fire animation, peeling paper and more) and the **wine rug**.
- 9 salon props, two of them animated lights.
- A Godot 4 project with TileSets (Match Corners terrains), SpriteFrames for the characters and the demo room.
- The 46-colour palette.

```
GravewoodManor_Lite/
  PNG/32/  tiles/ props/ heroes/medium/ enemies/ghost_maid/ enemies/possessed_doll/   plain PNG + JSON
  PNG/16/  the same at the 16x16 grid
  Godot/   Godot 4 project (open it, press F5)
  Maps/    salon_room.json and its renders
  palette.hex  palette.png  README.md  LICENSE.txt  CREDITS.txt
```

## Quick start (Godot 4.3+)

1. Open `Godot/project.godot` and run it: the demo room has characters and props.
2. In your own project, copy `Godot/gravewood/` to the project root.
3. Add a `TileMapLayer`, set its Tile Set to `res://gravewood/32/tileset_ash_blue.tres` (or `16/`), open the TileMap panel,
   go to Terrains and paint in Connect mode. Start by filling the area with `parquet`, then paint `wall` (its face is added
   for you) and `rug_wine`. Use strokes at least 2 cells wide.
4. Characters: instance `res://gravewood/32/heroes/medium/medium.tscn`. The node origin is the foot point. Animation names
   are `<anim>_<direction>`, for example `walk_south_east`.

Set the texture filter to Nearest in your engine; this is pixel art.

Directions in sheet row order: south, south-east, east, north-east, north, north-west, west, south-west. Read each
character's cell sizes and foot points from its json.

## Get the full pack

https://infreak.itch.io/gravewood-manor

The full pack adds:

- 1056 tiles in 46 sets: all six wallpaper schemes, stone halls, grand stairs, the wine cellar, and the
  manor exterior with its roof, windows, porch and gravel drive
- 68 prop files, 2 heroes, 10 enemies including the book swarm, the living armor, the cellar
  spider and the drowned butler, and the Drowned Lady boss
- 12 icons, the UI kit (19 pieces), and 7 sample maps plus a crossover map
- ready projects for **Tiled** and **Unity** (RuleTiles, palettes, animators), plus the full Godot project

Same world: Rotten Cathedral, https://infreak.itch.io/rotten-cathedral

## License

See `LICENSE.txt`. This is the free version; the same terms apply to the full pack.

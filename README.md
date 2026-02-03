# Ravager

A top-down adventure game in a post-apocalyptic survival sandbox.

Built with Godot 4.6

## Overview

Ravager is a top-down survival adventure game set in a post-apocalyptic world. Players navigate a hostile environment, scavenging for resources and surviving against the odds.

## Project Structure

```
ravager/
├── entities/           # Game entities (player, enemies, NPCs)
│   └── player.tscn    # Player character scene
├── scenes/            # Game scenes (menus, levels)
│   ├── game.tscn      # Main gameplay scene
│   └── main_menu.tscn # Main menu
├── scripts/           # GDScript source files
│   ├── main_menu.gd   # Main menu controller
│   └── player.gd      # Player movement controller
├── project.godot      # Godot project configuration
└── icon.svg           # Project icon
```

## Controls

| Action | Key |
|--------|-----|
| Move Left | A / ← |
| Move Right | D / → |
| Move Up | W / ↑ |
| Move Down | S / ↓ |

## Features

- **Main Menu** — Clean menu interface with start, options, and quit buttons
- **Smooth Player Movement** — Acceleration/deceleration-based movement system for responsive, natural-feeling controls
- **Collision Boundaries** — Screen edge collision prevents player from walking off-screen
- **Camera Following** — Camera tracks the player smoothly within the game area

## Getting Started

### Prerequisites

- [Godot 4.6+](https://godotengine.org/download)

### Running the Project

1. Clone or download this repository
2. Open Godot and click "Import"
3. Navigate to the project folder and select `project.godot`
4. Click "Import & Edit"
5. Press F5 or click the Play button to run

## Development

### Player Movement

The player uses a smooth acceleration system:
- `speed` — Maximum movement speed (pixels/second)
- `acceleration` — How quickly the player reaches max speed (higher = more responsive)

Adjust these values in the Player scene's Inspector panel.

### Input Actions

Custom input actions are defined in `Project Settings > Input Map`:
- `move_left` — A / Left Arrow
- `move_right` — D / Right Arrow
- `move_up` — W / Up Arrow
- `move_down` — S / Down Arrow

## License

[Your License Here]

## Contributing

[Your Contribution Guidelines Here]

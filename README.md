# Teddy & Sugar - A Playful Chase Game

A delightful browser-based game where you help Teddy the Golden Doodle catch his mischievous Siamese cat friend, Sugar!

## Game Overview

Guide Teddy around the room to catch Sugar before time runs out. Sugar will hide under furniture, jump away when spooked, and do everything she can to avoid being caught. The faster you catch her, the more points you earn!

## Technology Stack

### Frontend
- **PixiJS v8.6.6** - Hardware-accelerated 2D graphics rendering engine
- **Vanilla JavaScript** - No frameworks, pure ES6+ for game logic
- **HTML5 Canvas** - Rendered through PixiJS for smooth 60fps animations
- **CSS3** - Custom UI overlays and responsive design
- **LocalStorage API** - Client-side leaderboard persistence

### Backend
- **Node.js** - JavaScript runtime
- **Express.js** - Minimal web server for static file serving

### Graphics Approach
All game graphics are **procedurally drawn** using the PixiJS Graphics API - no image assets! This includes:
- Character sprites (Teddy, Sugar, T-Rex Rabbit)
- Furniture pieces (couches, tables, plants, etc.)
- Particle effects (hearts)
- Raccoon characters (both menu and distraction)

### Architecture Highlights
- **Real-time sprite animations** - Walking cycles, jumping, wagging tails
- **Y-sorting depth rendering** - Proper layering of characters and furniture
- **Collision detection** - Furniture obstacles and hiding mechanics
- **Dynamic difficulty scaling** - Increasing challenge across levels
- **State machine** - Clean phase management (name-entry, countdown, playing, catching, etc.)

## 🎯 Game Mechanics & Strategy

### Basic Controls
- **Arrow Keys** or **WASD** - Move Teddy around
- **Hold Shift + Movement** - Sprint (limited to 3 seconds with 10 second cooldown)

### Scoring System
Points are awarded based on **speed**:
- Each level has a maximum point value (1000 base + 200 per level)
- Catch Sugar instantly → Maximum points
- Points decrease linearly as time passes
- Minimum 100 points guaranteed per catch

### Strategic Tips
1. **Save your sprint** - Use it when Sugar is running or about to hide
2. **Corner Sugar** - Use furniture to block escape routes
3. **Watch for patterns** - Sugar favors hiding under certain furniture types
4. **Time management** - Faster catches = higher scores = better leaderboard position

### Game Progression
- **Level 1-2**: Basic chase mechanics
- **Level 3+**: 
  - T-Rex Rabbit appears (decorative distraction)
  - Raccoon distraction may appear (pulls Teddy away for 5 seconds)
  - More furniture obstacles
  - Sugar moves faster

### Sugar's AI Behavior
- **Fleeing**: Runs away from Teddy with evasive maneuvers
- **Hiding**: Seeks furniture to hide under when Teddy gets close
- **Spooked**: Randomly jumps and runs faster when startled
- **Smart pathfinding**: Chooses hiding spots based on distance from Teddy

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)

### Installation
```bash
# Clone the repository
git clone git@github.com:tbbooher/teddy.git
cd teddy

# Install dependencies
npm install

# Start the server
node server.js
```

### Play the Game
Open your browser and navigate to:
```
http://localhost:3000
```

## 🎨 Features

### Visual Elements
- **Procedural art style** - All graphics drawn programmatically
- **Smooth animations** - 60fps character movements and transitions
- **Dynamic room generation** - Furniture placement varies each level
- **Particle effects** - Hearts during catch sequences

### Game Features
- **Local leaderboard** - Top 5 scores saved in browser
- **Progressive difficulty** - 15+ levels with increasing complexity
- **Sprint mechanic** - Strategic speed boosts
- **Multiple game states** - Polished transitions between phases
- **Easter eggs** - Hidden surprises like the raccoon distraction

### UI Features
- **Timer with warnings** - Visual color changes as time runs low
- **Sprint indicator** - Shows availability and cooldown
- **Status messages** - Real-time feedback on game events
- **Leaderboard highlighting** - Your score highlighted in rankings

## 📁 Project Structure

```
teddy/
├── public/
│   └── index.html          # Single-file game (HTML + CSS + JS)
├── server.js               # Express server
├── package.json            # Dependencies
├── Dockerfile              # Container configuration
└── deploy.zsh             # Deployment script
```

## 🎭 Character Details

### Teddy (Golden Doodle)
- Fluffy golden coat with curly fur details
- Expressive eyes and tongue-out animation
- Wagging tail that speeds up when excited
- Happy closed-eye expression during catches

### Sugar (Siamese Cat)
- Classic Siamese coloring (cream with dark points)
- Distinctive blue eyes
- Arched back when spooked
- Graceful jump animations

### T-Rex Rabbit (Level 3+)
- White with black splotches
- Tiny T-Rex arms (cute detail!)
- Long pink-lined ears
- Hops across the bottom of the screen

### Raccoon
- Distinctive mask pattern
- Pointy ears
- Whiskers and detailed facial features
- Appears as both menu mascot and gameplay distraction

## 🏆 Leaderboard System

Scores are ranked by:
1. Total points (descending)
2. Levels reached (tiebreaker)

Top 10 scores persist in browser localStorage.

## 🐛 Known Features

- Sprint timing is crucial - use wisely!
- Raccoon distraction only happens once per game
- Sugar can't be caught while hiding or mid-jump
- Furniture generation ensures no overlapping obstacles

## 📄 License

Created with ❤️ as a fun browser game project.

## 🙏 Acknowledgments

- PixiJS community for excellent documentation
- Inspired by classic chase games and pet behavior

---

**Have fun playing! Can you reach the top of the leaderboard?** 🏆

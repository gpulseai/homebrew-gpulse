# gpulse — Homebrew Tap

**Never lose a training run to OOM.**

[gpulse](https://gpulse.ai) is a real-time GPU monitoring tool with predictive leak detection and OOM prediction. A beautiful, keyboard-driven TUI dashboard — like btop, but for GPUs.

## Install

```bash
brew tap gpulseai/gpulse
brew install gpulse
```

## Quick Start

```bash
# Launch the dashboard
gpulse dashboard

# Scan your GPUs
gpulse scan

# Try it without a GPU (demo mode)
gpulse dashboard --demo nvidia:4
```

## Features

- **7 dashboard views** — Grid, Detail, List, Predict, Compare, Topology, Fleet
- **OOM prediction** — 3 leak detection algorithms with real-time risk scoring, ETA to OOM, and confidence scores
- **Every GPU vendor** — NVIDIA (NVML), AMD, Intel, Apple Silicon (Metal/IOKit)
- **55+ metrics** — Memory, utilization, temperature, power, PCIe, fan, clocks, ECC, and more
- **15 color themes** — Monokai, Dracula, Catppuccin, Tokyo Night, Nord, and more
- **Keyboard-driven** — Vim-style navigation, command palette, mouse support
- **Prometheus endpoint** — `/metrics` for integration with Grafana, Datadog, New Relic

## Update

```bash
brew update
brew upgrade gpulse
```

## Uninstall

```bash
brew uninstall gpulse
brew untap gpulseai/gpulse
```

## Requirements

- macOS 13+ (Ventura or later)
- Apple Silicon (M1/M2/M3/M4) or Intel Mac
- Linux support coming soon

## Links

- **Website**: [gpulse.ai](https://gpulse.ai)
- **Main repo**: [github.com/gpulseai/gpulse](https://github.com/gpulseai/gpulse)
- **Discord**: [Join the community](https://discord.gg/nnU28awf)
- **Issues**: [Report a bug](https://github.com/gpulseai/gpulse/issues)
- **Contact**: karthik@gpulse.ai

## License

Proprietary. See the [main repo](https://github.com/gpulseai/gpulse) for details.

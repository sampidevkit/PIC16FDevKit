
# Bootloader

## Getting Started

- Press **Ctrl + Shift + B** to build the project.
- Open the Command Palette (**Ctrl + Shift + P**) and search for "MPLAB" to discover other available commands.
- Need more help? Visit the [MPLAB support site](https://www.microchip.com/en-us/support/all) or the [MPLAB website](https://www.microchip.com).
- Found a bug or have feedback? Open the Command Palette (**Ctrl + Shift + P**) and run
  **MPLAB: Report Issue** to let us know.

## Project Structure

- 📦 `_build` — The [CMake build tree](https://cmake.org/cmake/help/latest/manual/cmake.1.html#introduction-to-cmake-buildsystems); safe to delete, regenerated on next build.
- 📦 `cmake` — Generated [CMake](https://cmake.org/) files; can be deleted if `user.cmake` has not been added.
- 🚀 `out` — Final build artifacts.
- ⚙️ `.vscode` — VS Code workspace configuration; see [VS Code docs](https://code.visualstudio.com/docs/getstarted/settings).
- ⚙️ `.vscode\settings.json` — Workspace-specific settings.
- 📝 `.vscode\Bootloader.mplab.json` — The MPLAB project file. ❗ Should not be deleted.

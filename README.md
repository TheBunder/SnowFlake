# SnowFlake

This repository contains SnowFlake, an interactive fiction game developed as an assembly language project during my tenth grade.  SnowFlake offers a dynamic story experience where the player chooses their path through the narrative, influencing how the story unfolds.

## Key Features

*   **Dynamic Story:**  Choices you make affect the story's direction.
*   **Custom Text Rendering:**  The game features a unique text display system that preserves the background graphics, a technique I developed for this project and later reused by other students.
*   **Original Font:**  The text rendering system required the creation of a font from scratch.
*   **Interactive Choices:** When presented with options, the game illuminates the button the user is hovering over, providing clear visual feedback.


## How to Run the Game

To play SnowFlake, you will need to use DOSBox, an x86 PC emulator that allows you to run older DOS programs on modern operating systems.

1. **Install DOSBox:** Download and install DOSBox.

2. **Download Game Files:** Download the `SnowFlk.exe` file (the executable) and the `GamePic` folder (containing game assets) from this repository.

3. **Organize Files:** Place both `SnowFlk.exe` and the `GamePic` folder in the *same directory* on your computer.  This is crucial for the game to find its resources.

4. **Mount the Drive in DOSBox:**
    1. Open DOSBox.
    2. You'll need to "mount" the drive where you placed the game files.  For example, if you put the files in a folder called `C:\Games\SnowFlake`, you would use the following command in the DOSBox command prompt:
       ```
       mount C: C:\
       ```
       (Replace `C` with the actual driver the game is saved at.)

5. **Navigate to the Game Directory:**
    1. In the DOSBox command prompt, switch to the mounted drive:
       ```
       C:
       ```
    2. Then, navigate to the directory where the executable is located (if it's not directly on the mounted drive):
       ```
       cd Games\SnowFlake
       ```

6. **Run the Game:**
    1. Finally, run the game by typing the executable name and pressing Enter:
       ```
       SnowFlk.exe
       ```

## Gameplay

SnowFlake is a dynamic book-style game where your choices determine the story's progression.  Follow the on-screen prompts and make decisions to explore different branches of the narrative.

## Scenes from the Game

**Starting the Game:**
![Start of the Game](https://github.com/user-attachments/assets/aabfcf44-c749-43f9-a7d3-555de8667de7)

**Choosing Your Path:**
![Path Choosing](https://github.com/user-attachments/assets/394c5200-89df-4ee9-8539-ac8c57c050e7)

**A Possible Ending:**
![A Possible End](https://github.com/user-attachments/assets/3ee756a5-da08-4642-ad54-31df759cbd35)

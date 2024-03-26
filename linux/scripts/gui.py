#!/usr/bin/python3
import tkinter as tk
import subprocess

def run_command():
    input1 = entry1.get()
    input2 = entry2.get()
    combined_input = dropdown.get() + ' ' + input1 + ' ' + input2  # Prepend selected option to the command

    # Open the konsole terminal and execute the command
    subprocess.Popen(['konsole', '-e', combined_input])

# Create the main window
window = tk.Tk()
window.title("yt-gui")

# Create the dropdown menu for selecting the flags
label3 = tk.Label(window, text="Select type of download:")
label3.pack()
flag_options = ['Music', 'Video']
dropdown = tk.StringVar(window)
dropdown.set(flag_options[0])  # Set the default option
flags_menu = tk.OptionMenu(window, dropdown, *flag_options)
flags_menu.pack()

# Create the input labels
label1 = tk.Label(window, text="Directory to download to:")
label1.pack()
entry1 = tk.Entry(window)
entry1.pack()

label2 = tk.Label(window, text="Video URL:")
label2.pack()
entry2 = tk.Entry(window)
entry2.pack()

# Create the button to run the command
button = tk.Button(window, text="Download", command=run_command)
button.pack()

# Create the text at the bottom
second_bottom_text = tk.Label(window, text="Command will be executed in konsole. If you have not installed konsole, do so now.")
second_bottom_text.pack()

# Create more text
bottom_text = tk.Label(window, text="Do not use '~'. Use '$HOME' instead.")
bottom_text.pack()

# Start the GUI event loop
window.mainloop()

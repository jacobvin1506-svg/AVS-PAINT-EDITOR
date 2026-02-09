import tkinter as tk
from tkinter import colorchooser, messagebox
import os

# ================= ACTIVACION =================
ACTIVATION_PREFIX = "AVS-PAINT-"

def check_activation():
    if not os.path.exists("activation_code.txt"):
        return False

    with open("activation_code.txt", "r") as f:
        code = f.read().strip()

    return code.startswith(ACTIVATION_PREFIX) and len(code) == len("AVS-PAINT-1234")

if not check_activation():
    root = tk.Tk()
    root.withdraw()
    messagebox.showerror(
        "Activation Required",
        "Activation code not found or invalid.\n\n"
        "This software is FREE.\n"
        "Please generate an activation code first."
    )
    exit()

# ================= EDITOR =================
class AVSPaintEditor:
    def __init__(self, root):
        self.root = root
        self.root.title("AVS Paint Editor (Unofficial)")
        self.root.geometry("900x600")

        self.color = "black"
        self.brush_size = 4

        self.canvas = tk.Canvas(root, bg="white")
        self.canvas.pack(fill=tk.BOTH, expand=True)

        toolbar = tk.Frame(root)
        toolbar.pack(fill=tk.X)

        tk.Button(toolbar, text="Color", command=self.choose_color).pack(side=tk.LEFT)
        tk.Button(toolbar, text="Clear", command=self.clear_canvas).pack(side=tk.LEFT)
        tk.Button(toolbar, text="About", command=self.about).pack(side=tk.LEFT)

        self.canvas.bind("<B1-Motion>", self.draw)

    def draw(self, event):
        x, y = event.x, event.y
        r = self.brush_size
        self.canvas.create_oval(
            x - r, y - r, x + r, y + r,
            fill=self.color, outline=self.color
        )

    def choose_color(self):
        color = colorchooser.askcolor()
        if color[1]:
            self.color = color[1]

    def clear_canvas(self):
        self.canvas.delete("all")

    def about(self):
        messagebox.showinfo(
            "About",
            "AVS Paint Editor (Unofficial)\n\n"
            "Free for everyone\n"
            "Educational project\n"
            "Not affiliated with AVS4YOU"
        )

# ================= MAIN =================
root = tk.Tk()
app = AVSPaintEditor(root)
roo

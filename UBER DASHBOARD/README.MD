# create_uber_gif.py
# Requirements: Pillow (pip install pillow)
# Place this script on the machine that has the image files (overview.jpg, vehicle.jpg, revenue.jpg, rider.jpg, location.jpg, Customer.jpg)
# Then run: python create_uber_gif.py

from PIL import Image, ImageDraw, ImageFont
import os

# --- CONFIG ---
image_folder = "./"  # folder where images are stored (adjust if needed)
image_files = [
    "overview.jpg",
    "vehicle.jpg",
    "revenue.jpg",
    "rider.jpg",
    "location.jpg",
    "Customer.jpg"
]
output_gif = "uber_dashboard.gif"
frame_duration_ms = 1200   # milliseconds per frame
loop_forever = 0           # 0 means loop forever; use 1 for play twice, etc.
resize_to = None           # (width, height) or None to keep first image's size
add_title_frame = False    # set True to prepend a title frame
title_text = "Uber Power BI Dashboard"
title_duration_ms = 1200

# --- Helper: create title frame (optional) ---
def make_title_frame(size, text, font_path=None):
    img = Image.new("RGB", size, color=(255, 255, 255))
    draw = ImageDraw.Draw(img)
    # try to load a reasonable font; fallback to default
    try:
        font = ImageFont.truetype(font_path or "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 48)
    except Exception:
        font = ImageFont.load_default()
    w, h = draw.textsize(text, font=font)
    x = (size[0] - w) // 2
    y = (size[1] - h) // 2
    draw.text((x, y), text, fill=(20, 20, 20), font=font)
    return img

# --- Load images ---
images = []
for fname in image_files:
    path = os.path.join(image_folder, fname)
    if not os.path.isfile(path):
        raise FileNotFoundError(f"Image not found: {path}")
    images.append(Image.open(path).convert("RGB"))

# Resize all frames to match the first image (or custom size)
base_size = resize_to if resize_to else images[0].size
if resize_to:
    base_size = resize_to
images = [img.resize(base_size, Image.LANCZOS) for img in images]

# Optionally prepend a title frame
frames = []
if add_title_frame:
    frames.append(make_title_frame(base_size, title_text))
frames.extend(images)

# Save as GIF
# durations: PIL accepts `duration` (ms) for all frames, or a list of durations per frame
durations = []
if add_title_frame:
    durations.append(title_duration_ms)
durations.extend([frame_duration_ms] * len(images))

frames[0].save(
    output_gif,
    save_all=True,
    append_images=frames[1:],
    duration=durations,
    loop=loop_forever,
    optimize=False,
    quality=95
)

print(f"Saved GIF: {os.path.abspath(output_gif)}")


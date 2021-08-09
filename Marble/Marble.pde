float perlin_step = 0.02;

void setup() {
    size(640, 512);
}

void draw() {
    loadPixels();
    float xoff = 0.0;
    for (int x = 0; x < width; x++) {
        float yoff = 0.0;
        for (int y = 0; y < height; y++) {
            float bright = map(noise(xoff, yoff), 0, 1, 0, 255);
            pixels[x + y * width] = color(bright);
            yoff += perlin_step;
        }
        xoff += perlin_step;
    }
    updatePixels();
}
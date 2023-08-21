module pad(pad_diameter, pad_thickness) {
    resize([pad_diameter, pad_diameter, pad_thickness])
    sphere(d=pad_diameter, $fn=10);
}
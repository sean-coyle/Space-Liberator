// needs to override the parent event so that the bullet isnt destroyed immediately
// so that it can penetrate

if penetration == 0 {
	instance_destroy()
}

penetration -= 1

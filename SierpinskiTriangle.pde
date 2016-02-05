public int limit = width;
public int fillColor = color(255, 0, 0);
public void setup()
{
	size(800, 800);
}
public void draw()
{
	background(0);
	fill(100);
	sierpinski(0, height, width);
	fill(255);
	text(mouseX + ", " + mouseY, mouseX, mouseY);
	fill(fillColor);
	text(limit, mouseX + 20, mouseY + 20);
}
public void mouseDragged()//optional
{
	if(mouseX >= 0 && mouseX < (4*width)/20)
		limit = (4*width)/20;
	else if(mouseX >= (4*width)/20 && mouseX < (8*width)/20)
	{
		limit = (8*width)/20;
		fillColor = color(0, 255, 0);
	}
	else if(mouseX >= (8*width)/20 && mouseX < (12*width)/20)
	{
		limit = (12*width)/20;
		fillColor = color(0, 0, 255);
	}
	else if(mouseX >= (12*width)/20 && mouseX < (16*width)/20)
	{
		limit = (16*width)/20;
		fillColor = color(100, 0, 0);
	}
	else if(mouseX >= (16*width)/20 && mouseX < (20*width)/20)
	{
		limit = (20*width)/20;
		fillColor = color(0, 100, 0);
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= limit)
		triangle(x, y, x+len/2, y-len, x+len, y);
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}
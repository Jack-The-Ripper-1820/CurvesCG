# CurvesCG

vcpkg installation - 
https://github.com/microsoft/vcpkg/blob/master/README.md

cmake installation - 
https://cmake.org/install/

Project Description - Curves Subdvision

**Part 1**
### Task 1: Create Scene
Display 8 points on the screen each of a different color and arranged uniformly on a circle.

### Task 2: Picking
Upon mouse click, change the color of the selected point to highlight it. Restore the original color upon release.
Use orthogonal projection.

### Task 3: Dragging
Implement the ability to move the points with the mouse
Make all points suitably large.

**Part 2**
### Task 1: (B-spline) Subdivision

Initialize P0i=Pi (white points).
Use these formulas to create a refined set of control points (cyan)

Pk2i:=4Pk−1i−1+4Pk−1i8

Pk2i+1:=Pk−1i−1+6Pk−1i+Pk−1i+18

where k is the level of subdivison and
i is the index of points is in range 0…(N×2k−1) .

The figure illustrates one step of subdivision.
Your implementation should allow repeated refinement (at least 5 times).
Upon pressing key 1, one additional refinement should be triggered.
Initially when (k=0), the control polygon should be drawn without subdivision.
Whenever key 1 is pressed the subdivided control polygon should be redrawn.
Every sixth refinement resets to level k=0.

### 2: C2 Bézier curves

Let P={P1,…,PN} be the the set of input points.
You will construct N Bézier curves of degree 3: one curve segment for each input point.
The coefficients of the ith curve are ci={ci,0,ci,1,ci,2,ci,3}.
The interior Bézier points (yellow) are:

ci,1:=2Pi+Pi+13

ci,2:=Pi+2Pi+13

Determine ci,0 and ci,3=ci+1,0 so that the polynomial pieces join C1.
Write down the formulas for ci,0 and ci,3 and place them into your ReadMe.txt file.

This method should be activated when key 2 is pressed on the keyboard

### Task 3: C1 Catmull-Rom curves
Let P={P1,…,PN} be the the set of input points.
Construct a Catmull-Rom curve that interpolates the N points Pi as follows.
There are N Bézier curve segments of degree 3.
The coefficients of each segment i are ci={ci,0,ci,1,ci,2,ci,3} where ci,0=Pi and ci,3=Pi+1.
The tangent at ci,0 is a multiple of Pi+1−Pi−1.

Once all of the Bézier points (red) are determined use deCasteljau's Algorithm to evaluate the curve at 17 points per segment.
Connecting the points yields the Catmull-Rom curve (green).

This method should be activated when key 3 is pressed on the keyboard

**Part 3**
### Task 1: Picking and Dragging

Enable picking and dragging from Project 1a for the N=10 control points Pi of Project 1b (Tasks 1, 2, and 3) and display the corresponding curve. The curve should change as the Pi are moved.
When the keybord shift key is pressed, instead of the movement in the x-y plane, vertical movement of the mouse moves the point along the Z axis (note: since we look from the top this is not yet visible).
NOTE: Picking should work in Single View, but it is not required in Double View.

### Task 2: Double View

In the top half of the window draw the default view perpendicular to the x-y plane. In the bottom half of the window draw the side view perpendicular to y-z plane.

The double-view should be toggled when 4 is pressed.

**Bonus**
Create a yellow triangle when key  5  is pressed.  
It should loop along the curve indefinitely and have an RGB coordinate frame attached where  
R = tangent, G = main normal, B = bi-normal direction.

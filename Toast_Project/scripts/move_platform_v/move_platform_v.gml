///@arg platformObject
SolidObjectV = argument[0];


_sol_plat = instance_place(x, y+velocity[1], SolidObjectV);

// vertical collisions


  //Are we colliding with the platform?
if(_sol_plat)
{
  //Are we above it while colliding with it?
  if(bbox_bottom <  _sol_plat.bbox_top)
  {
      while(!place_meeting(x, y+sign(velocity[1]), _sol_plat)) 
  {
    y += sign(velocity[1]);
  }
      //Then make our vertical speed 0
   velocity[1] = 0;           
 }      

} 

     //Is there a platform 1 pixel below us?
grounded2 = instance_place(x, y+1, SolidObjectV);   

  if(grounded2) 
{
  //same check from earlier, are we above the platform?
  if(bbox_bottom < floor(grounded2.bbox_top) )
  { 

      //then check if it is going down, or if its speed, in this case velocity[1] is 0, and add that value to our y position. 
     if(grounded2.velocity[1] > 0) || (grounded2.velocity[1] == 0)
     {

       y += grounded2.velocity[1];
     }
 }
}
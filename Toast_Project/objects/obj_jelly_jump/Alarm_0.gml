/// @description RECHARGE

ACTIVE = true;
repeat(15) instance_create_depth(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), depth-10, obj_dust);
scale = 1.5
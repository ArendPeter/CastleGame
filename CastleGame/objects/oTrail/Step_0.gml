step ++
if(step % frame_gap == 0){
	ds_list_add(frames, {x: x, y: y, frame: image_index, xscale: image_xscale})
	if(ds_list_size(frames) > num_frames){
		ds_list_delete(frames, 0)
	}
}


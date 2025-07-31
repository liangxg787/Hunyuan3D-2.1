export OPENCV_IO_ENABLE_OPENEXR=1
export OUTPUT_FOLDER=dataset/preprocessed
#export BLENDER_PATH=/path/to/blender-4.0.2-linux-x64/blender
export BLENDER_PATH=/nobackup/babbage/users/xl01339/blender-4.0.2-linux-x64/blender

#export INPUT_FILE=dataset/raw/uuid.glb
export INPUT_FILE=/nobackup/babbage/users/xl01339/03001627_10/1a38407b3036795d19fb4103277a6b93/export INPUT_FILE=/nobackup/babbage/users/xl01339/03001627_10/1a38407b3036795d19fb4103277a6b93/model.obj
export NAME=model

#$BLENDER_PATH -b -P render/render.py -- --object ${INPUT_FILE} --output_folder $OUTPUT_FOLDER/$NAME/render_cond --geo_mode --resolution 512
# $BLENDER_PATH -b -P render/render.py -- --object ${INPUT_FILE} --output_folder $OUTPUT_FOLDER/$NAME/render_tex --resolution 512
python3 watertight/watertight_and_sample.py --input_obj $OUTPUT_FOLDER/$NAME/render_cond/mesh.ply --output_prefix $OUTPUT_FOLDER/$NAME/geo_data/$NAME

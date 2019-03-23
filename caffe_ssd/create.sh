
dir=$1
tools/flistPcl.py $dir
type="detection"
labeltype="xml"
labelmap=labelmap.prototxt
checklabel=False
mindim=0
maxdim=0
resizeh=960
resizew=540
backend="lmdb"
shuffle=True
checksize=False
encode="--encode_type=jpg --encoded"
gray=False
list=$dir/list.txt
out=/home/lk/dataShiYan/lmdb/$dir
rm -r $out
/home/caffe_ssd_DIR/.build_release/tools/convert_annoset --anno_type=$type --label_type=$labeltype --label_map_file=$labelmap --check_label=$checklabel --min_dim=$mindim --max_dim=$maxdim --resize_height=$resizeh --resize_width=$resizew --backend=$backend --shuffle=$shuffle --check_size=$checksize $encode --gray=$gray caffe_ssd_dir/$dir/ $list $out

<?php
	Class HotWidget extends Widget {
		Public function render($data){
			//热门博文			
			$field=array("id","title","click","time");
			$data['blog']=M("blog")->field($field)->order("click desc")->limit($data['limit'])->select();
			return $this->renderFile("",$data);
		}
	}
?>
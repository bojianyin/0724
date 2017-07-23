<?php
	Class IndexAction extends Action {
		Public function Index() {
			
			if(!$topCate=S("index_list")){
				echo "111";//缓存
				$Cate=M("category")->order("sort")->select();
				$topCate=M("category")->where(array("pid"=>0))->order("sort")->select();
				import("Class.Category",APP_PATH);
				foreach($topCate as $key=>$v){
					$cateId=Category::getChildId($Cate,$v['id']);
					$cateId[]=$v['id'];
					$where=array("cid"=>array("IN",$cateId));
					$topCate[$key]['blog']=M("blog")->where($where)->select();
				}
				
				S("index_list",$topCate,10);
			}
			
			$this->list=$topCate;
			$this->display();
		}
	}
?>
<?php
	Class BlogRelationModel extends RelationModel {
		protected $tableName="Blog";
		protected $_link=array(
			"attr"=>array(
				"mapping_type"=>MANY_TO_MANY
				,"mapping_name"=>"attr"
				,"foreign_key"=>"bid"
				,"relation_foreign_key"=>"aid"
				,"relation_table"=>"blog_attr",
			),
			"category"=>array(
				"mapping_type"=>BELONGS_TO
				,"foreign_key"=>"cid"
				,"mapping_fields"=>"name"
			),
		);
		
		Public function getBlogs($type=0){
			$where=array("del"=>$type);
			return $this->where($where)->relation(true)->select();
		}
		
	}
?>
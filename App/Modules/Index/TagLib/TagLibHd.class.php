<?php
//	import("TagLib");
	Class TagLibHd extends TagLib {
		protected $tags=array(
			'loop'=>array('attr'=>"order",'close'=>1)
		);
		Public function _loop($attr,$content){
			$attr=$this->parseXmlAttr($attr);
			$str=<<<str
	<?php
		\$_nav_cate=M('category')->order('{$attr["order"]}')->select();
		import('Class.Category',APP_PATH);
		\$_nav_cate=Category::arrayMergeChilds(\$_nav_cate);
		foreach (\$_nav_cate as \$v) :
			extract(\$v);
	?>			
str;
		$str.=$content;
		$str.="<?php endforeach ?>";
			return $str;
		}
	}
?>
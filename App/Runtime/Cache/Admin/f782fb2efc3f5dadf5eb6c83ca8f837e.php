<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="__PUBLIC__/layui/css/layui.css" />
		<script src="__PUBLIC__/js/jquery-2.1.4.min.js"></script>
	</head>
	<body>
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
		  <legend>博文列表</legend>
		</fieldset>  
	 	<form action="" class="layui-form" method="post">
			<table class="layui-table" lay-skin="line">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>标题</th>
			      <th>所属分类</th>
			      <th>点击次数</th>
			      <th>发布时间</th>
			      <th>操作</th>
			    </tr> 
			  </thead>
			  <tbody>
			  		<?php if(is_array($blog)): foreach($blog as $key=>$bo): ?><tr>
				   	  	<td><?php echo ($bo["id"]); ?></td>
				   	  	<td><?php echo ($bo["title"]); ?>
				   	  	<?php if(is_array($bo["attr"])): foreach($bo["attr"] as $key=>$at): ?><strong style="color:<?php echo ($at["color"]); ?>">[<?php echo ($at["name"]); ?>]</strong><?php endforeach; endif; ?>
				   	  	</td>
				   	  	<td><?php echo ($bo['category']['name']); ?></td>
				   	  	<td><?php echo ($bo["click"]); ?></td>
				   	  	<td><?php echo date('Y-m-d H:i',$bo['time']);?></td>
				   	  	<td>
				   	  		<?php if(ACTION_NAME == 'index'): ?>[<a href="">修改</a>]
				   	  		[<a href="<?php echo U(GROUP_NAME.'/Blog/deleteBlog',array('id'=>$bo['id'],'type'=>'1'));?>">删除</a>]
				   	  		<?php else: ?>
				   	  		[<a href="<?php echo U(GROUP_NAME.'/Blog/deleteBlog',array('id'=>$bo['id'],'type'=>'0'));?>">还原</a>]
				   	  		[<a href="<?php echo U(GROUP_NAME.'/Blog/deleteBlogRoot',array('id'=>$bo['id']));?>">彻底删除</a>]<?php endif; ?>
				   	  	</td>
				   	  </tr><?php endforeach; endif; ?>
			   	  	
			  </tbody>
			</table>   
		</form>
  </tbody>
</table> 		
	</body>
	<script src="__PUBLIC__/layui/layui.js"></script>
</html>
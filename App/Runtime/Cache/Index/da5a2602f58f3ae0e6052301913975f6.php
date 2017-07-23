<?php if (!defined('THINK_PATH')) exit();?><div class="widget widget_hot">
	<h3>热门博文</h3>
	<ul>
		<?php if(is_array($blog)): foreach($blog as $key=>$v): ?><li>
				<a href="#"><span class="text"><?php echo ($v["title"]); ?></span><span class="muted"><i class="glyphicon glyphicon-time"></i>
					<?php echo date('Y-m-d H:i',$v['time']);?>
				</span><span class="muted"><i class="glyphicon glyphicon-eye-open"><?php echo ($v["click"]); ?></i></span></a>
			</li><?php endforeach; endif; ?>
	</ul>
</div>
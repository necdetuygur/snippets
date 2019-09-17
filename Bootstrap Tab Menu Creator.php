<?php
$temp = array(
	"menu1" => "Menu 1",
	"menu2" => "Menu 2",
	"menu3" => "Menu 3",
	"menu4" => "Menu 4",
	"menu5" => "Menu 5"
);
?>
<div class="container">
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<ul class="nav nav-pills">
					<?php $first = 1; foreach ($temp as $key => $value) { ?>
					<li<?=$first?' class="active"':''?>><a data-toggle="tab" href="#<?=$key?>"><?=$value?></a></li>
					<?php if($first) $first--; } ?>
				</ul>
			</div>
			<div class="panel-body">
				<div class="tab-content">
					<?php $first = 1; foreach ($temp as $key => $value) { ?>
					<div id="<?=$key?>" class="tab-pane fade in <?=$first?'active':''?>">
						<h3><?=$value?></h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, error omnis ea quia expedita harum amet deserunt distinctio, itaque esse temporibus tempore, consequatur quas perspiciatis animi. Animi nobis dolore dignissimos?</p>
					</div>
					<?php if($first) $first--; } ?>
				</div>
			</div>
		</div>
	</div>
</div>
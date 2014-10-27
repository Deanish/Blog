<h1>Create Topic</h1>
<?php

	echo $this->Form->create('Topic');
	// echo $this->Form->input('user_id');
	echo $this->Form->input('title');
	if(AuthComponent::user('role') == 2) {
		echo $this->Form->input('visible', array('options' => $visibleOptions));
	}
	echo $this->Form->end('Save Topic');

?>
<?php App::import('controller', 'Users'); ?>

<h1><?php echo $topic['Topic']['title']; ?></h1>

<?php 

	echo $this->HTML->link('Create a post in this topic', array('controller' => 'posts', 'action' => 'add', $topic['Topic']['id'])); 

?>
<table>
	<tr><td>Sr. No.</td><td>User</td><td>Post</td></tr>
<?php
	$count = 1;
	foreach($topic['Post'] as $post) {
		$ucontroller = new UsersController;
		$uname = $ucontroller->getUsernameById($post['user_id']);
		echo "<tr><td>". $count ."</td><td>". $uname['User']['username'] ."</td><td>". $post['body'] ."</td></tr>";
		$count++;
	}
?>
</table>



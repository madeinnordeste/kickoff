<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Welcome extends Controller {

	public function action_index()
	{
		$this->request->response = 'hello, world!';
	}
	
	public function action_enviroment(){
	    echo Kohana::debug(Kohana::$environment);
	}

} // End Welcome

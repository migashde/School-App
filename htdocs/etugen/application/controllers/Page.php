<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {
        public function __construct()
        {
                parent::__construct();
                $this->load->model('page_model');
        }
	public function single($id)
	{
		echo json_encode($this->page_model->get_page($id),JSON_UNESCAPED_UNICODE);
	}
}

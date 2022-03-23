<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
                $this->load->model('news_model');
        }
	public function index()
	{
		echo json_encode($this->news_model->get_news(),JSON_UNESCAPED_UNICODE);
	}
	public function single($id)
	{
		echo json_encode($this->news_model->get_news($id),JSON_UNESCAPED_UNICODE);
	}
}

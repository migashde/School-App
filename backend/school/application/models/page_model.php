<?php
class Page_model extends CI_Model {

        public function __construct()
        {
                $this->load->database();
        }
        public function get_page($id)
{
        $query = $this->db->get_where('page', array('id' => $id));
        return $query->row_array();
}

}

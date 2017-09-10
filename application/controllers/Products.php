<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Products extends Admin_Controller                   //menggunakan turunan class admin
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('products_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $content= 'content/product/products_list';    
        $products = $this->products_model->get_all();  

        $data = array(
            'content'=>$content,
            'products_data' => $products
            
        );
        $this->load->view('admin/app', $data);    
    }

 /*   public function read($id) 
    {
        $row = $this->products_model->get_by_id($id);
        if ($row) {
            $data = array(
		'serial' => $row->serial,
		'name' => $row->name,
		'description' => $row->description,
		'price' => $row->price,
		'picture' => $row->picture,
	    );
            $this->load->view('products_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('products'));
        }
    }*/
    
}

/* End of file Products.php */
/* Location: ./application/controllers/Products.php */
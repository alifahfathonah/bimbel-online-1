<?php defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/kelas_model', 'kelas_model');
	}

	public function index()
	{
		$data['title'] = 'Kelas';
		$data['layout'] = 'admin/kelas';
		$this->load->view('admin/layout_admin', $data);
	}
}
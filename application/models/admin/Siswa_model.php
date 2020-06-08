<?php defined('BASEPATH') or exit('No direct script access allowed');

class Siswa_model extends CI_Model
{


	// login function
	public function list_siswa()
	{
        $this->db->select('xx_pendaftaran.id_kelas, xx_pendaftaran.status ,xx_pendaftaran.created_at, xx_users.nama,, xx_profile.no_hp');
        $this->db->from('xx_pendaftaran');
        $this->db->join('xx_users', 'xx_users.id_user = xx_pendaftaran.id_user');
        $this->db->join('xx_profile', 'xx_profile.id_user = xx_users.id_user');
        // $this->db->where('xx_pendaftaran.status', 1);
        $this->db->order_by('xx_pendaftaran.created_at', 'desc');
        $query = $this->db->get();
		//echo $this->db->last_query();
		return $query->result_array();
	}
}
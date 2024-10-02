<?php

namespace App\Models;

use CodeIgniter\Model;

class UserkelasModel extends Model
{
    protected $table = 'user_kelas';
    protected $primaryKey = 'id_user_kelas';
    protected $allowedFields = ['kelas_kode', 'email', 'nama'];

    public function getMyClass($email)
    {
        return $this
            ->join('kelas', 'kelas.kode_kelas=user_kelas.kelas_kode')
            ->where('user_kelas.email', $email)
            ->get()->getResultObject();
    }

    public function getMyClassByCodeAndEmail($kelas_kode, $email)
    {
        return $this
            ->join('kelas', 'kelas.kode_kelas=user_kelas.kelas_kode')
            ->where('user_kelas.kelas_kode', $kelas_kode)
            ->where('user_kelas.email', $email)
            ->get()->getRowObject();
    }

    public function getAllbyClass($kelas_kode)
    {
        return $this
            ->join('kelas', 'kelas.kode_kelas=user_kelas.kelas_kode')
            ->where('user_kelas.kelas_kode', $kelas_kode)
            ->get()->getResultObject();
    }
}

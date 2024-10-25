<?php

namespace Database\Seeders;

use App\Models\Portofolio;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class PortofolioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'title'=> 'Aplikasi Koprasi Simpan Pinjam',
                'image'=> 'assets/img/karya/koperasi.jpg',
                'description'=> 'Php Native + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Check Device Laptop',
                'image'=> 'assets/img/karya/device.png',
                'description'=> 'Vb.Net + PHP + Firebase + Sqlite',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Operation Integrasi Marketplace',
                'image'=> 'assets/img/karya/op.png',
                'description'=> 'Laravel 5.7 + Mysql + Develop Team',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Dpkp Sim Cipta Karya',
                'image'=> 'assets/img/karya/bangkim.png',
                'description'=> 'Codeigniter 2.2.6 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Laravel Mini Forum Programming',
                'image'=> 'assets/img/karya/forum.png',
                'description'=> 'Laravel 5.6 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Aplikasi Operation Klinik',
                'image'=> 'assets/img/karya/nkdc.png',
                'description'=> 'Laravel 5.8 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Demo Aplikasi Management Asset',
                'image'=> 'assets/img/karya/asset.png',
                'description'=> 'Laravel 5.8 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Demo Aplikasi Monitoring Order Card',
                'image'=> 'assets/img/karya/dev.jpg',
                'description'=> 'Laravel 6.0 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Any Desc',
                'image'=> 'assets/img/karya/any.jpeg',
                'description'=> 'Laravel 6.0 + Mmsql / Sql Server',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Aplikasi Laundry',
                'image'=> 'assets/img/karya/laundrys.png',
                'description'=> 'Laravel 6.0 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Frontend Layanan Public Desa',
                'image'=> 'assets/img/karya/antrian.png',
                'description'=> 'React Bootstrap',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Marketing Of Year',
                'image'=> 'assets/img/karya/moy.png',
                'description'=> 'Laravel 6.0 + Sql Server',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Inventory Control',
                'image'=> 'assets/img/karya/inventory.png',
                'description'=> 'Laravel 6.0 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Backend Kredit Kendaraan',
                'image'=> 'assets/img/karya/backend.png',
                'description'=> 'Laravel 7.0 + mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Frontend Kredit Kendaraan',
                'image'=> 'assets/img/karya/frontend.png',
                'description'=> 'Laravel 7.0 + mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Personal Framework Management Project',
                'image'=> 'assets/img/karya/framework-personal.png',
                'description'=> 'Laravel 8.0 + Mysql',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Automatic download and satellite data processing',
                'image'=> 'assets/img/karya/vb.png',
                'description'=> 'VB.net + Ms Access',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],

        ];

        Portofolio::insert($data);
    }
}

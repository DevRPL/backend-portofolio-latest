<?php

namespace Database\Seeders;

use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductDevelopmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'url'=> 'https://www.youtube.com/embed/zfF79mHMe-0',
                'title'=> 'Sistem Informasi Aplikasi Mini Laundry',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'url'=> 'https://www.youtube.com/embed/6RNJO0HYL08',
                'title'=> 'Sistem Informasi Aplikasi Mini Inventory Control',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'url'=> 'https://www.youtube.com/embed/YmVv9_ucGss',
                'title'=> 'Sistem Informasi Simulasi Aplikasi Credit',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'url'=> 'https://www.youtube.com/embed/Ced-BFFoakQ',
                'title'=> 'Aplikasi Koperasi Simpan Pinjam Berbasis Web',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'url'=> 'https://www.youtube.com/embed/cohBvZYTlQg',
                'title'=> 'Aplikasi Cek Ongkir Berbasis Web',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
        ];

        Product::insert($data);
    }
}

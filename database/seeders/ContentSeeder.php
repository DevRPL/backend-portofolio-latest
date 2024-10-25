<?php

namespace Database\Seeders;

use App\Models\Content;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class ContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'title'=> 'Tips Routing di Laravel 8',
                'url'=> 'https://www.youtube.com/embed/9rARrp99RU4',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Cara Upgrade Laravel v7 ke v8',
                'url'=> 'https://www.youtube.com/embed/9rPwdJYGsnw',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'How to install Microsoft Teams on Linux (Indonesia)',
                'url'=> 'https://www.youtube.com/embed/gi0Cg2UA_ew',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Hirarki Profesi Anak IT(Coder, Programmer, Software Engineer dan Software Developer)',
                'url'=> 'https://www.youtube.com/embed/w7YIcCRKHu8',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> '11 Aturan Yang Harus Diterapkan Oleh Setiap Programmer, Developer Dan Software Engineering',
                'url'=> 'https://www.youtube.com/embed/AlsR-z8ZJxI',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> 'Perkembangan Teknologi Society Indrusry 5.0',
                'url'=> 'https://www.youtube.com/embed/UhFDZsIaTLQ',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'title'=> '13 Jenis-Jenis Logical Fallacy',
                'url'=> 'https://www.youtube.com/embed/D0YND7Gh89E',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
        ];

        Content::insert($data);
    }
}

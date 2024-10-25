<?php

namespace Database\Seeders;

use App\Models\Skill;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class SkillSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'image'=> 'assets/img/png/Php.png',
                'url'=> 'https://www.php.net',
                'experience'=> '3 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/Laravel.png',
                'url'=> 'https://laravel.com',
                'experience'=> '3 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/Ci.png',
                'url'=> 'https://codeigniter.com',
                'experience'=> '2 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/js.png',
                'url'=> 'https://www.w3schools.com/Js',
                'experience'=> '2 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/jquery.png',
                'url'=> 'https://jquery.com',
                'experience'=> '2 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/ReactJs.png',
                'url'=> 'https://legacy.reactjs.org',
                'experience'=> '3 months',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/restApi.png',
                'url'=> 'https://en.wikipedia.org/wiki/Overview_of_RESTful_API_Description_Languages',
                'experience'=> '1 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/css.png',
                'url'=> 'https://www.w3schools.com/Css',
                'experience'=> '3 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/bootstrap.png',
                'url'=> 'https://getbootstrap.com/docs/5.2/getting-started/introduction',
                'experience'=> '3 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/mysql.png',
                'url'=> 'https://www.mysql.com',
                'experience'=> '3 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/mmsql.png',
                'url'=> 'https://www.microsoft.com/en-us/sql-server/sql-server-downloads',
                'experience'=> '6 months',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/git.png',
                'url'=> 'https://git-scm.com',
                'experience'=> '3 years',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/nginx.png',
                'url'=> 'https://nginx.org/en',
                'experience'=> '6 months',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'image'=> 'assets/img/png/vbNet.png',
                'url'=> 'https://www.tutorialspoint.com/vb.net/index.htm',
                'experience'=> '8 months',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
        ];

        Skill::insert($data);
    }
}

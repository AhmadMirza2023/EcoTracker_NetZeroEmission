<?php

namespace Database\Seeders;

use App\Models\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CarbonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $carbons = [
            [
                'user_id' => 1,
                'activity_type' => 'transportasi',
                'activity_detail' => 'mobil pribadi',
                'emission_amount' => 2.3,
            ],
            [
                'user_id' => 2,
                'activity_type' => 'konsumsi listrik',
                'activity_detail' => 'lampu pijar',
                'emission_amount' => 0.41,
            ],
            [
                'user_id' => 1,
                'activity_type' => 'kebiasaan belanja',
                'activity_detail' => 'baju bekas',
                'emission_amount' => 1.5,
            ],
            [
                'user_id' => 2,
                'activity_type' => 'transportasi',
                'activity_detail' => 'transportasi umum',
                'emission_amount' => 0.03,
            ],
            [
                'user_id' => 1,
                'activity_type' => 'konsumsi listrik',
                'activity_detail' => 'lampu LED',
                'emission_amount' => 0.11,
            ],
            [
                'user_id' => 2,
                'activity_type' => 'kebiasaan belanja',
                'activity_detail' => 'celana bekas',
                'emission_amount' => 1.2,
            ],
            [
                'user_id' => 1,
                'activity_type' => 'transportasi',
                'activity_detail' => 'mobil listrik',
                'emission_amount' => 1.0,
            ],
            [
                'user_id' => 2,
                'activity_type' => 'konsumsi listrik',
                'activity_detail' => 'AC rumah tangga',
                'emission_amount' => 0.89,
            ],
            [
                'user_id' => 1,
                'activity_type' => 'kebiasaan belanja',
                'activity_detail' => 'sepatu bekas',
                'emission_amount' => 1.1,
            ],
            [
                'user_id' => 2,
                'activity_type' => 'transportasi',
                'activity_detail' => 'sepeda',
                'emission_amount' => 0.1,
            ],
        ];
        foreach ($carbons as $carbonItem) {
            Carbon::create($carbonItem);
        }
    }
}

<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\DeliveryTerm::factory(50)->create();
        \App\Models\Transport::factory(50)->create();
        \App\Models\Company::factory(50)->create();
        \App\Models\User::factory(50)->create();
        \App\Models\User::factory(1)->create(['firstname' => 'Administrador', 'email' => 'admin@admin.com', 'password'=> '12345678', 'activated' => 1, 'email_confirmed' => 1]);

    }
}

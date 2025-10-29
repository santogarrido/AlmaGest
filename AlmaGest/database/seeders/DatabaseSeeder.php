<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(1)->create(['firstname' => 'Administrador', 'email' => 'admin@admin.com', 'password'=> '12345678', 'activated' => 1, 'email_confirmed' => 1]);
        \App\Models\DeliveryTerm::factory(1)->create();
    }
}

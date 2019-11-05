<?php

use Illuminate\Database\Seeder;

class OrderItemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $orderItems = factory(App\OrderItem::class, 50)->create();
        // factory(App\OrderItem::class, 50)->create()->each(function ($item) {
        //     $item->product()->save(factory(App\Product::class)->make());
        //     $item->order()->save(factory(App\Order::class)->make());
        // });

        // factory(\App\OrderItem::class, 50)->create([
        //     'product_id' => $faker->numberBetween($min = 1, $max = 200),
        //     'order_id' => $faker->numberBetween($min = 13, $max = 62),
        //     'quantity' => $faker->numberBetween($min = 10, $max = 900),
        // ]);
    }
}

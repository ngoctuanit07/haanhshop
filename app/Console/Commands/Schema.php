<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;


class Schema extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'schemas:create';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
		$localBusiness = Schema::localBusiness()
			->name('Thu hiền Store')
			->email('tuannguyen0719@gmail.com')
			->url('https://thuhienstore.club/')
			->telephone('0976522437')
			->contactPoint(Schema::contactPoint()->areaServed('Thu Hiền store'));
	
		$localBusiness->toScript();
    }
}

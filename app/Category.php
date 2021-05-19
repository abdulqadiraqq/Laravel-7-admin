<?php

namespace App;

use Spatie\Sluggable\HasSlug;
use Spatie\Sluggable\SlugOptions;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    protected $fillable = array('id','category_name','slug');

    use HasSlug;

    public function getSlugOptions() : SlugOptions
    {
        return SlugOptions::create()
            ->generateSlugsFrom('category_name')
            ->saveSlugsTo('slug');
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
    
}

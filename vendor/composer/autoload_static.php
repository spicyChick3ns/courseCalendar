<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInite3d0f36eb947641f40d353c5114918de
{
    public static $prefixesPsr0 = array (
        'S' => 
        array (
            'Slim' => 
            array (
                0 => __DIR__ . '/..' . '/slim/slim',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixesPsr0 = ComposerStaticInite3d0f36eb947641f40d353c5114918de::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}

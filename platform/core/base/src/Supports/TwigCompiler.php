<?php

namespace Botble\Base\Supports;

use Twig\Environment;

/**
 * @mixin \Twig\Environment
 */
class TwigCompiler
{
    protected TwigLoader $loader;

    protected Environment $env;

    public function __construct(array $options = [])
    {
        $this->loader = new TwigLoader();
        $this->env = new Environment($this->loader, $options);

        $this->env->addExtension(new TwigExtension());
    }

    public function compile(string $content, array $data = []): string
    {
        $this->loader->setContent($content);

        return $this->env->render($this->loader->hashedContent(), $data);
    }

    public function __call(string $name, array $arguments)
    {
        return $this->env->{$name}(...$arguments);
    }
}

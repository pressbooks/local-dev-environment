<?php
/**
 * Your base production configuration goes in this file. Environment-specific
 * overrides go in their respective config/environments/{{WP_ENV}}.php file.
 *
 * A good default policy is to deviate from the production config as little as
 * possible. Try to define as much of your configuration in this file as you
 * can.
 */

use Roots\WPConfig\Config;

/**
 * Directory containing all of the site's files
 *
 * @var string
 */
$root_dir = dirname(__DIR__);

/**
 * Document Root
 *
 * @var string
 */
$webroot_dir = $root_dir . '/web';

/**
 * Use Dotenv to set required environment variables and load .env file in root
 * .env.local will override .env if it exists
 */
$env_files = file_exists($root_dir . '/.env.local')
    ? ['.env', '.env.local']
    : ['.env'];

$dotenv = Dotenv\Dotenv::createUnsafeImmutable($root_dir, $env_files, false);
if (file_exists($root_dir . '/.env')) {
    $dotenv->load();
    $dotenv->required(['WP_HOME', 'WP_SITEURL']);
    if (!env('DATABASE_URL')) {
        $dotenv->required(['DB_NAME', 'DB_USER', 'DB_PASSWORD', 'WP_HOME', 'WP_SITEURL']);
    }
}

/**
 * Set up our global environment constant and load its config first
 * Default: production
 */
define('WP_ENV', env('WP_ENV') ?: 'production');

/**
 * URLs
 */
Config::define('WP_HOME', env('WP_HOME'));
Config::define('WP_SITEURL', env('WP_SITEURL'));

/**
 * Custom Content Directory
 */
Config::define('CONTENT_DIR', '/app');
Config::define('WP_CONTENT_DIR', $webroot_dir . Config::get('CONTENT_DIR'));
Config::define('WP_CONTENT_URL', Config::get('WP_HOME') . Config::get('CONTENT_DIR'));

/**
 * DB settings
 */
Config::define('DB_NAME', env('DB_NAME'));
Config::define('DB_USER', env('DB_USER'));
Config::define('DB_PASSWORD', env('DB_PASSWORD'));
Config::define('DB_HOST', env('DB_HOST') ?: 'localhost');
Config::define('DB_CHARSET', 'utf8mb4');
Config::define('DB_COLLATE', '');
$table_prefix = env('DB_PREFIX') ?: 'wp_';

if (env('DATABASE_URL')) {
    $dsn = (object) parse_url(env('DATABASE_URL'));

    Config::define('DB_NAME', substr($dsn->path, 1));
    Config::define('DB_USER', $dsn->user);
    Config::define('DB_PASSWORD', isset($dsn->pass) ? $dsn->pass : null);
    Config::define('DB_HOST', isset($dsn->port) ? "{$dsn->host}:{$dsn->port}" : $dsn->host);
}

/**
 * Authentication Unique Keys and Salts
 */
Config::define('AUTH_KEY', env('AUTH_KEY'));
Config::define('SECURE_AUTH_KEY', env('SECURE_AUTH_KEY'));
Config::define('LOGGED_IN_KEY', env('LOGGED_IN_KEY'));
Config::define('NONCE_KEY', env('NONCE_KEY'));
Config::define('AUTH_SALT', env('AUTH_SALT'));
Config::define('SECURE_AUTH_SALT', env('SECURE_AUTH_SALT'));
Config::define('LOGGED_IN_SALT', env('LOGGED_IN_SALT'));
Config::define('NONCE_SALT', env('NONCE_SALT'));

/**
 * Custom Settings
 */
Config::define('AUTOMATIC_UPDATER_DISABLED', true);
Config::define('DISABLE_WP_CRON', env('DISABLE_WP_CRON') ?: false);
// Disable the plugin and theme file editor in the admin
Config::define('DISALLOW_FILE_EDIT', true);
// Disable plugin and theme updates and installation from the admin
Config::define('DISALLOW_FILE_MODS', true);
// Limit the number of post revisions that Wordpress stores (true (default WP): store every revision)
Config::define('WP_POST_REVISIONS', env('WP_POST_REVISIONS') ?: true);

/**
 * Debugging Settings
 */
Config::define('WP_DEBUG', env('WP_DEBUG') ?: false);
Config::define('WP_DEBUG_DISPLAY', false);
Config::define('WP_DEBUG_LOG', true);
Config::define('SCRIPT_DEBUG', false);
ini_set('display_errors', '0');

/**
 * Pressbooks Settings BEGIN
 */
Config::define('PB_EPUBCHECK_COMMAND', '/usr/bin/java -jar /opt/epubcheck/epubcheck.jar');
if (env('DOCRAPTOR_API_KEY')) {
    Config::define('DOCRAPTOR_API_KEY', env('DOCRAPTOR_API_KEY'));
}
if (env('STRIPE_SK')) {
    Config::define('STRIPE_SK', env('STRIPE_SK'));
}
if (env('STRIPE_PK')) {
    Config::define('STRIPE_PK', env('STRIPE_PK'));
}
if (env('WPCOM_API_KEY')) {
    Config::define('WPCOM_API_KEY', env('WPCOM_API_KEY'));
}
if (env('PHP_SAML_SP_CERT_PATH')) {
    Config::define('PHP_SAML_SP_CERT_PATH', env('PHP_SAML_SP_CERT_PATH'));
}
if (env('PHP_SAML_SP_KEY_PATH')) {
    Config::define('PHP_SAML_SP_KEY_PATH', env('PHP_SAML_SP_KEY_PATH'));
}
if (env('PB_MATHJAX_URL')) {
    Config::define('PB_MATHJAX_URL', env('PB_MATHJAX_URL'));
}
Config::define('WP_QUICKLATEX_CACHE_DIR', Config::get('WP_CONTENT_DIR') . '/uploads/quicklatex');
Config::define('WP_QUICKLATEX_CACHE_URL', Config::get('WP_CONTENT_URL') . '/uploads/quicklatex');
Config::define('WP_MEMORY_LIMIT', env('WP_MEMORY_LIMIT') ?: '96M'); // Everywhere
Config::define('WP_MAX_MEMORY_LIMIT', env('WP_MAX_MEMORY_LIMIT') ?: '256M'); // In the admin
Config::define('WP_REDIS_DISABLE_BANNERS', true);
Config::define('WP_POST_REVISIONS', 50); //this might conflict with the line above

/**
 * Multisite Settings
 */
Config::define('WP_ALLOW_MULTISITE', true);
Config::define('MULTISITE', true);
Config::define('SUBDOMAIN_INSTALL', false);
Config::define('DOMAIN_CURRENT_SITE', env('DOMAIN_CURRENT_SITE'));
Config::define('COOKIE_DOMAIN', '.' . env('DOMAIN_CURRENT_SITE'));
Config::define('PATH_CURRENT_SITE', '/');
Config::define('SITE_ID_CURRENT_SITE', 1);
Config::define('BLOG_ID_CURRENT_SITE', 1);

/**
 * Redis ElastiCache Settings
 */

Config::define('WP_REDIS_CONFIG', array(
    'token' => env('WP_REDIS_TOKEN'),
    'host' => env('WP_REDIS_HOST'),
    'port' => env('WP_REDIS_PORT'),
    'database' => env('WP_REDIS_DATABASE'),
    'password' => env('WP_REDIS_PASSWORD'),
    'prefix' => md5(env('DOMAIN_CURRENT_SITE')),
    'maxttl' => 3600 * 24 * 7, // 7 days
    'timeout' => 1.0,
    'read_timeout' => 1.0,
    'split_alloptions' => true,
    'debug' => false,
));

Config::define('WP_REDIS_DISABLED', false);

/**
 * Sentry integration
 */
Config::define('ENABLE_SENTRY', env('ENABLE_SENTRY') ? env('ENABLE_SENTRY') : '0');
if ( Config::get('ENABLE_SENTRY') === '1' ) {
    Config::define(
        'WP_SENTRY_PHP_DSN',
        ( env( 'SENTRY_INITIALIZE_PHP' ) && env( 'SENTRY_INITIALIZE_PHP' ) === '1' ) ? env('SENTRY_DSN') : null
    );
    Config::define(
        'WP_SENTRY_BROWSER_DSN',
        env( 'SENTRY_INITIALIZE_JAVASCRIPT' ) && env( 'SENTRY_INITIALIZE_JAVASCRIPT' ) === '1' ? env('SENTRY_DSN') : null
    );
    Config::define('WP_SENTRY_SEND_DEFAULT_PII', false);
    Config::define('WP_SENTRY_ENV', env('PB_SERVER_NAME') . '-' . env('REGION') . '-' . env('WP_ENV') );
    Config::define('WP_SENTRY_BROWSER_TRACES_SAMPLE_RATE', env('SENTRY_TRACE_SAMPLE_RATE') ? env('SENTRY_TRACE_SAMPLE_RATE') : '0.5');
}

/**
 * Pressbooks Settings END
 */

/**
 * Allow WordPress to detect HTTPS when used behind a reverse proxy or a load balancer
 * See https://codex.wordpress.org/Function_Reference/is_ssl#Notes
 */
if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
    $_SERVER['HTTPS'] = 'on';
}

$env_config = __DIR__ . '/environments/' . WP_ENV . '.php';

if (file_exists($env_config)) {
    require_once $env_config;
}

Config::apply();

/**
 * Bootstrap WordPress
 */
if (!defined('ABSPATH')) {
    define('ABSPATH', $webroot_dir . '/wp/');
}
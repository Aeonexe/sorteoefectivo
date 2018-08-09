<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //

// Local

// define('DB_NAME', 'bancoppel_sorteo');
// define('DB_USER', 'remote');
// define('DB_PASSWORD', 'remote');
// define('DB_HOST', 'localhost');


/** The name of the database for WordPress */
define('DB_NAME', 'codecase_bsorteoremote');
define('DB_USER', 'codecase_bancopp');
define('DB_PASSWORD', 'CaPri1@*.$');
define('DB_HOST', '166.62.103.223:3306');


/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Z6,rv23?2T{M&Y[vc%3)_-sN~WoA_GBBGUHbMk^U8_!wv?[+j[6M|#mq6*4Gr!pt');
define('SECURE_AUTH_KEY',  'gqni73,7vB>!vDBQqJBgei@Lx>:wvGcgrQ$#[f]X;R+N ,lzV7]/~;d0EG;tC[f/');
define('LOGGED_IN_KEY',    's8=bEE&K5bY=M$*v[**siaPad!z{IsrC6`4P&cPj2n)YS7b~dy[.uq.(l$%r}W{$');
define('NONCE_KEY',        '`M2@Q]m*-&#9B9*iRy7flJX(-C} FUOAvq@d(_3l!OZ9:H!^,2jU2`oF),wS;ELa');
define('AUTH_SALT',        ')3;s|zN.wl-eY@ X-W=z49jAWW*R &VgQ_rlt+>#3XDUB.e|a,X(u$jl7Hq>J--&');
define('SECURE_AUTH_SALT', 'v#%rXG$p]lHtkVb/Bb;8z}@HX.r`VPt|Ez.7?b+4ocqz^z+z<G.51- 9HaNShP~>');
define('LOGGED_IN_SALT',   'xf#bH#w7UF0RlnA3mz|&|=vzuKOgiG+G^,&C0V,U9 (,.c_H87s(^YDZ>}&L=*XB');
define('NONCE_SALT',       '$K-F4HsWap9cDx*X82=EdsAU]?l&09#iDt)^^OyH~J/+=A5S~-X%-8S9&ci*%l}!');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'bncstvx_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

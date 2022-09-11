<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Site');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
//$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Site::index');
$routes->get('/home', 'Site::view/home');
$routes->get('/about', 'Site::view/about');
$routes->get('/product', 'Site::view/products');

$routes->get('/contact', 'Contact::sendContact');
$routes->add('/contactAction', 'Contact::sendContactAction');
//interação com clientes no DB
$routes->get('/listClient', 'Client::listClient');
$routes->get('/client/(:num)/', 'Client::detailsClient/$1');

//área administrativa
//login:
$routes->get('/admin', 'Admin\Admin::index');
$routes->get('/admin/login', 'Admin\Admin::login');
$routes->get('/admin/logout', 'Admin\Admin::logout');
$routes->add('/admin/validate-login', 'Admin\User::validateLogin');

//crud client:
$routes->add('admin/listClients', 'Admin\Client::listClients');
$routes->add('admin/client/(:num)', 'Admin\Client::detailsClient/$1');
$routes->add('admin/insertClient', 'Admin\Client::insertClient');
$routes->add('admin/insertClientAction', 'Admin\Client::insertClientAction');
$routes->add('admin/client/update/(:num)', 'Admin\Client::updateClient/$1');
$routes->add('admin/client/updateAction/(:num)', 'Admin\Client::updateClientAction/$1');
$routes->add('admin/client/delete/(:num)', 'Admin\Client::deleteClient/$1');

$routes->add('admin/client/buscaClient', 'Admin\Client::buscaClient');
$routes->add('admin/client/buscaClientAction', 'Admin\Client::buscaClientAction');
$routes->add('admin/listContact', 'Admin\Contact::listContact');

//api
$routes->get('/api/client', 'Client::listClientsJSON');


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}

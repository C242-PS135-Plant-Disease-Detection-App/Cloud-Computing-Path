const Hapi = require('@hapi/hapi');
const Inert = require('@hapi/inert');
const routes = require('./routes');

const init = async () => {
  const server = Hapi.server({
    port: process.env.PORT || 8080, // Port untuk App Engine
    host: '0.0.0.0', // Agar dapat diakses di App Engine
  });

  await server.register(Inert);

  // Daftarkan rute API terlebih dahulu
  server.route(routes);

  // Rute untuk file statis
  server.route({
    method: 'GET',
    path: '/static/{param*}',
    handler: {
      directory: {
        path: 'public',
        index: false,
      },
    },
  });

  // Rute untuk melayani index.html di /login
  server.route({
    method: 'GET',
    path: '/login',
    handler: (request, h) => {
      return h.file('public/index.html');
    },
  });

  // Fallback untuk rute yang tidak dikenal
  server.route({
    method: '*',
    path: '/{any*}',
    handler: (request, h) => {
      return h.response({ message: 'ERROR 404 Not Found' }).code(404);
    },
  });

  await server.start();
  console.log(`Server running on ${server.info.uri}`);
};

process.on('unhandledRejection', (err) => {
  console.error(err);
  process.exit(1);
});

init();

import { Client } from 'pg'

export default () => {
  return new Client({
    user: 'postgres',
    password: 'postgres',
    host: 'localhost',
    port: 5432,
    database: 'demo-restart',
    client_encoding: 'UTF8' // Указываем кодировку клиента
  })
}

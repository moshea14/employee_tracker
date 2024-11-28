import pg from 'pg';

const { Client } = pg;
const client = new Client({
    user: 'postgres',
    password: 'Torpedoes14',
    database: 'employee_db'
});

await client.connect();

export default client;
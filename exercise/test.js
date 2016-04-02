import fs from 'fs';
import assert from 'assert';
import mainPgp from 'pg-promise';

const cn = {
    user: 'nobody',
    host: '/var/run/postgresql'
};

describe('rows', () => {
    it('should be updated', (done) => {
        const pgp = mainPgp();
        const db = pgp(cn);
        const solution = fs.readFileSync('./solution.sql', 'utf8');

        const actualQuery = db.query(solution);

        actualQuery.then((data) => {
            const result = [
                {id: 2, name: 'Перфоратор'}, {id: 3, name: 'Считыватель'}, {id: 7, name: 'Лента'}
            ];

            assert.equal(JSON.stringify(data), JSON.stringify(result));
        }).then(done, done);
    });
});

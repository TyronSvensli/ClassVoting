const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

const connection = mysql.createConnection({
    host: 'MyComputer.local',
    user: 'root',
    password: 'Password123',
    database: '2IM_voting'
});

app.post('/query', (req, res) => {
    const id = req.body.id;

    const sql1 = 'SELECT * FROM 2IM_elever WHERE elev_token = ?';
    console.log(sql1)

    connection.query(sql1, [id], (err, results) => {
        if (err) {
            console.error('Error executing query:', err.stack);
            res.status(500).json({ error: 'Internal Server Error' });
            return;
        }
        
        if (results.length === 0) {
            // Token not found in the database
            res.status(404).json({ error: 'Token not found' });
            return;
        }
        
        if (String(results[0].voted_id) == 1){
            console.log(String(results[0].first_name) + ' tried voting more than once');
            res.status(500).json({ error: 'Already Voted Before, Cannot Vote Again' });
            return;
        }


        const sql2 = 'SELECT * FROM 2IM_kandidater WHERE klasse =' + " '" + String(results[0].klasse) + "';";
        console.log(sql2)

        connection.query(sql2, ['some_value'], (err, results2) => {
            if (err) {
                console.error('Error executing second query:', err.stack);
                res.status(500).json({ error: 'Internal Server Error' });
                return;
            }
            res.json({ result1: results, result2: results2 });
        }); 
    });
});

app.post('/vote', (req, res) => {
    const rowData = req.body;
    const id = req.body.id;
    const voting_id = req.body.voting_id;

    const sql1 = 'UPDATE 2IM_elever SET voted_id = 1 WHERE elev_token = ' + id + ";";
    console.log(sql1)

    connection.query(sql1, [id], (err, result) => {
        if (err) {
            console.error('Error executing query with id:', err.stack);
            res.status(500).json({ error: 'Internal Server Error' });
            return;
        }

        const sql2 = 'UPDATE 2IM_kandidater SET votes = votes + 1 WHERE voting_id = ' + voting_id + ";";
        console.log(sql2)

        connection.query(sql2, [rowData.someField, rowData.anotherField], (err, result) => {
            if (err) {
                console.error('Error executing query with row data:', err.stack);
                res.status(500).json({ error: 'Internal Server Error' });
                return;
            }
            res.json({ message: 'Vote processed successfully' });
        });
    });
});


app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
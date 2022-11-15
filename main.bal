import ballerina/sql;
import ballerinax/mysql;
import ballerina/time;

// Configurations
configurable string host = ?;
configurable string username = ?;
configurable string password = ?;
configurable string database = ?;
configurable int port = ?;

public type Police record {|
    int id;
    int userId;
    string content;
    @sql:Column {name: "recorded_date"}
    time:Date recordedDate;
|};

// Opening a connection
final mysql:Client dbClient = check new mysql:Client(host, username, password, database, port);

function checkCitizen(int id) returns Police | error? {
    Police police = check dbClient->queryRow(`SELECT * FROM police WHERE id = ${id};`);

    return police;
}
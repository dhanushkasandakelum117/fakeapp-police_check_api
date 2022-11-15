import ballerina/http;

service /police on new http:Listener(9091) {
    // check user has police record or not
    resource function get [int id] () returns error? | Police {
        return checkCitizen(id);
    }

    // TODO: create police record

    // TODO: get police record

    // TODO: get all police record

    // TODO: update police record

    // TODO: delte police record
}
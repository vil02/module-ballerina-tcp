import ballerina/tcp;

service on new tcp:Listener(3000) {

    remote function onConnect(tcp:Caller caller) returns tcp:ConnectionService {
        return new EchoService();
    }
}

service isolated class EchoService {
    *tcp:ConnectionService;

    remote function onBytes(readonly & byte[] data) {

    }

    remote function onError(anydata err) {

    }
}

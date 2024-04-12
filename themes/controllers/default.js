exports.install = function () {
    ROUTE('GET /', view_index);
};

function view_index() {
    var self = this;
    self.theme(self.query.theme || 'b2alabs');
    self.title('Theme example');
    self.view('index');
}
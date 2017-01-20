const AuthorApiUtil = {

    fetchAllAuthors: function (success, error) {
        $.ajax({
            url: `api/authors`,
            method: 'GET',
            success: function (resp) {
                success(resp);
            },
            error: function (resp) {
                error(resp);
            }
        });
    },

    getAuthor: function (id, success, error) {
        $.ajax({
            url: `api/authors/${id}`,
            method: 'GET',
            success: function (resp) {
                success(resp);
            },
            error: function (resp) {
                error(resp);
            }
        });
    }

};

module.exports = AuthorApiUtil;

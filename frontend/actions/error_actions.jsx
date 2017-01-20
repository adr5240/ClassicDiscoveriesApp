const AppDispatcher = require('../dispatcher/dispatcher');
const ErrorConstants = require('../constants/error_constants');

const ErrorActions = {

    clearErrors: function () {
        AppDispatcher.dispatch({
            actionType: ErrorConstants.CLEAR_ERRORS
        });
    },

    setErrors: function (form, error) {
        AppDispatcher.dispatch({
            actionType: ErrorConstants.SET_ERRORS,
            form: form,
            error: error
        });
    }
};

module.exports = ErrorActions;

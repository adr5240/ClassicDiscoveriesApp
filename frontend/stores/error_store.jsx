const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const ErrorConstants = require('../constants/error_constants');

const ErrorStore = new Store(AppDispatcher);

let _errors = [];
let _form;

let _clearErrors = function () {
    _form = "";
    _errors = [];
    ErrorStore.__emitChange();
};

let _setErrors = function (form, errors) {
    _form = form;
    _errors = errors;
    ErrorStore.__emitChange();
};

ErrorStore.errors = function (form) {
    let errors = [];
    if (form === _form) {
        errors = _errors.slice(0);
    }
    return errors;
};

ErrorStore.form = function () {
    return _form;
};

ErrorStore.__onDispatch = function (payload) {
    switch (payload.actionType) {
        case ErrorConstants.SET_ERRORS:
            _setErrors(payload.form, payload.error);
            this.__emitChange();
            break;
        case ErrorConstants.CLEAR_ERRORS:
            _clearErrors();
            this.__emitChange();
            break;
    }
};

module.exports = ErrorStore;

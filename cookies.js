$(document).ready(function() {
// start this when DOM is ready
$(function(){
    var checkbox = $('#remember'),
        userField = $('#exampleInputEmail1'),
 
        // assign the key name to a variable
        // so we don't have to type it up every time
        key = 'savedUsername',
 
        // use jStorage to retrieve a stored key
        // on first load this is going to return undefined
        username = $.jStorage.get(key);
 
    // if a username was saved from previous session
    // set the value of the username field to that
    // tick off the checkbox and set focus on password field
    if (username) {
        userField.val(username);
        checkbox.prop('checked', true);
        $('#mood').focus();
    }
 
    // if username wasn't saved then
    // set username field value to blank and focus on it
    // and make sure the checkbox is unchecked
    else {
        userField.val('').focus();
        checkbox.prop('checked', false);
    }
 
    // when form is submitted check the checkbox
    // if it's checked then save the username using jStorage
    // if not then delete whatever saved username exists
    $('#loginForm').submit(function(e){
        if (checkbox.prop('checked')) {
            $.jStorage.set(key, userField.val());
        }
        else {
            $.jStorage.deleteKey(key);
        }
    });
});
});
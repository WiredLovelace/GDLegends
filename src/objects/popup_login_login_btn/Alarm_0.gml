/// @description Perform the sign in

login_req = http_post_string (global.server_url + "/accounts/account_login.php", "submit=legends&username=" + uname_text.val
																			   + "&password=" + password_text.val)
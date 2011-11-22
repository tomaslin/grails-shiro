package pages

import geb.Page

class LoginPage extends Page {
    static url = "login"

    static at = { title == "Login" }

    static content = {
        loginForm { $("form") }
        message { $("div.message") }
        signIn { $("input", value: "Sign in") }
    }
}

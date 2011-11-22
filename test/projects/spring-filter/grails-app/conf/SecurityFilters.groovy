class SecurityFilters {
    def filters = {
        auth(controller: /\b(?!(item|book|basic|form)\b)\w+/, action: "*") {
            before = {
                accessControl(auth: true) { true }
            }
        }

        bookEditing(controller: "book", action: "*") {
            before = {
                accessControl {
                    role("Administrator")
                }
            }
        }

        test(controller: "test", action: "(create|edit|save|update|delete)") {
            before = {
                accessControl()
            }
        }

        wildcards(controller: "wildcard", action: "*") {
            before = {
                accessControl {
                    permission("w:$actionName")
                }
            }
        }
    }
}

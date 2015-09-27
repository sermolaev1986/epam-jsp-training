/**
 * Serves requests to get user's previous inputs.
 * User inputs are stored in session.
 */
if (session.userActions)    {
    println "User actions: $session.userActions"
} else {
    println('No user actions found.')
}

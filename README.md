Evernote Rails Example
======================

This is an example app written for @zenkbaries that demonstrates Evernote
integration in a Rails app.

It uses [OmniAuth](https://github.com/intridea/omniauth) and [Omniauth
Evernote](https://github.com/szimek/omniauth-evernote) for authentication.
Interfacing with the Evernote API is done via Evernote's [Ruby
SDK](https://github.com/evernote/evernote-sdk-ruby) and a [wrapper
gem](https://github.com/teddywing/evernote) originally written by Chris Sepic
and extended by kipcole9.


## Setup
First obtain an API key from https://dev.evernote.com/.

Then run:

	$ sh setup.sh

Edit the `.env` file and fill in your API keys.


## Running
Start the server as usual with `rails server`. The index page at
`http://localhost:3000` will display a link that can be used to authenticate
with Evernote. At the moment, going through the OAuth process just writes the
resulting auth hash to the server log.

The hard-coded access token and NoteStore URL in `NotesController` can be filled
in with appropriate values to access an authorized user's notes. Those notes can
be viewed by visiting the `/notes` page.


## License
Licensed under the MIT license. See the included LICENSE file.

class NotesController < ApplicationController
  def index
    access_token = 'S=s1:U=91e2f:E=151f92661a2:C=151f4000220:P=185:A=evernotesandbox199:V=2:H=5777502290baf1ae1b36ad6254592258'
    notestore_url = 'https://sandbox.evernote.com/shard/s1/notestore'

    # e = EvernoteService.new(auth_token, notestore_url)
    # @notebooks = e.notebooks

    # @notes = @notebooks.collect { |b| e.notes_from_notebook(b) }

    note_store = Evernote::NoteStore.new(notestore_url, access_token)

    @notebooks = note_store.notebooks
    # @notes = @notebooks.collect { |b| b.notes }
  end
end

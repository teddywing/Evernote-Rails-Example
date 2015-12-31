class EvernoteService
  def initialize(auth_token, notestore_url)
    @auth_token = auth_token
    @notestore_url = notestore_url

    noteStoreTransport = Thrift::HTTPClientTransport.new(@notestore_url)
    noteStoreProtocol = Thrift::BinaryProtocol.new(noteStoreTransport)
    @note_store = Evernote::EDAM::NoteStore::NoteStore::Client.new(noteStoreProtocol)
  end

  def notebooks
    @note_store.listNotebooks(@auth_token)
  end

  def notes_from_notebook(notebook)
    @note_store.findNotesMetadata(
      @auth_token,
      Evernote::EDAM::NoteStore::NoteFilter.new(:notebookGuid => notebook.guid),
      0,
      50,
    )
  end
end
